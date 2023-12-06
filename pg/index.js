import { Client } from 'pg'

/**
 * @description 云函数入口函数
 * @param {Object} params - 参数对象
 * @param {string} params.action - 操作类型（select、insert、update、delete)
 * @param {string} params.msg - 操作信息(查询：无，插入：插入的数据，更新：更新的数据，删除：删除的条件)
 * @returns {Promise} 返回云函数执行结果
 */
async function main (params) {
  const client = new Client({
    host: 'pc-j6co18fl35v405l3d.pg.polardb.rds.aliyuncs.com',
    user: 'root1',
    //端口号
    port: 1921,
    password: 'Gaojing030113',
    database: 'test',
  })

  await client.connect()

  try {
    // 当数据不存在column1时，创建column1
    await client.query('CREATE TABLE IF NOT EXISTS test (column1 INT, column2 VARCHAR(255), column3 VARCHAR(255), data VARCHAR(255))')

    let query = ''
    let queryValues = []
    switch (params.action) {
      case 'select':
        query = 'SELECT * FROM test' // 示例查询
        break
      case 'insert':
        query = `INSERT INTO test(data) VALUES ($1)` // 示例插入
        queryValues = [params.msg]
        break
      case 'update':
        query = `UPDATE test SET data = $1` // 示例更新
        queryValues = [params.msg]
        break
      case 'delete':
        query = `DELETE FROM test WHERE data = $1` // 示例删除
        queryValues = [params.msg]
        break
    }

    const results = await client.query(query, queryValues)
    return { results: results.rows }
  } catch (error) {
    throw { error: error.message, query: query, queryValues: queryValues, msg: params.msg }
  } finally {
    await client.end()
  }
}

export { main }
