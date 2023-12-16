const redis = require('redis');

/**
 * @description 云函数入口函数
 * @param {Object} params - 参数对象
 * @param {string} params.action - 操作类型（select、insert、update、delete)
 * @param {string} params.msg - 操作信息(查询：无，插入：插入的数据，更新：更新的数据，删除：删除的条件)
 * @returns {Promise} 返回云函数执行结果
 */
function main(params) {
  return new Promise((resolve, reject) => {
    const client = redis.createClient({
      host: 'localhost',
      port: '6379',
    });

    client.on('error', (error) => {
      reject({ error: error.message });
    });

    let query = '';
    let queryValues = [];
    switch (params.action) {
      case 'select':
        query = 'SELECT * FROM test'; // 示例查询
        break;
      case 'insert':
        query = `INSERT INTO test(data) VALUES ('${params.msg}')`; // 示例插入
        break;
      case 'update':
        queryValues = [params.msg];
        query = `UPDATE test SET ?`; // 示例更新
        break;
      case 'delete':
        query = `DELETE FROM test WHERE ${params.msg}`; // 示例删除
        break;
    }

    // Perform Redis operations based on the action
    switch (params.action) {
      case 'select':
        client.get('test', (error, result) => {
          if (error) {
            reject({ error: error.message });
          } else {
            resolve({ results: result });
          }
        });
        break;
      case 'insert':
        client.set('test', params.msg, (error, result) => {
          if (error) {
            reject({ error: error.message });
          } else {
            resolve({ results: result });
          }
        });
        break;
      case 'update':
        client.set('test', params.msg, (error, result) => {
          if (error) {
            reject({ error: error.message });
          } else {
            resolve({ results: result });
          }
        });
        break;
      case 'delete':
        client.del('test', (error, result) => {
          if (error) {
            reject({ error: error.message });
          } else {
            resolve({ results: result });
          }
        });
        break;
    }
  });
}

exports.main = main;