const mysql = require('mysql')

/**
 * @description 云函数入口函数
 * @param {Object} params - 参数对象
 * @param {string} params.action - 操作类型（select、insert、update、delete)
 * @param {string} params.msg - 操作信息(查询：无，插入：插入的数据，更新：更新的数据，删除：删除的条件)
 * @returns {Promise} 返回云函数执行结果
 * */
function main (params) {
  return new Promise((resolve, reject) => {
    const connection = mysql.createConnection({
      host: 'pc-j6c8k2tb4145796a5.mysql.polardb.rds.aliyuncs.com',
      user: 'root1',
      port: 3306,
      password: 'Gaojing030113',
      database: 'test',
    })

    connection.connect()

    //当数据不存在column1时，创建column1
    connection.query('CREATE TABLE IF NOT EXISTS test (column1 INT, column2 VARCHAR(255), column3 VARCHAR(255),data VARCHAR(255))', [], (error, results, fields) => {
      if (error) {
        connection.end()
        reject({ error: error.message })
      }
    })

    let query = ''
    let queryValues = []
    switch (params.action) {
      case 'select':
        query = 'SELECT * FROM test' // 示例查询
        break
      case 'insert':
        query = `INSERT INTO test(data) VALUES ('${params.msg}')` // 示例插入
        break
      case 'update':
        queryValues = [params.msg]
        query = `UPDATE test SET ?` // 示例更新
        break
      case 'delete':
        query = `DELETE FROM test WHERE ${params.msg}` // 示例删除
        break
    }

    connection.query(query, (error, results, fields) => {
      connection.end()
      if (error) {

        reject({ error: error.message, query: query, queryValues: queryValues, msg: params.msg })
      } else {
        resolve({ results: results })
      }
    })
  })
}

exports.main = main
