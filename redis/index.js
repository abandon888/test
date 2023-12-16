const redis = require('redis');

/**
 * 云函数入口函数
 * @param {Object} params - 参数对象
 * @param {string} params.action - 操作类型（select、insert、update、delete)
 * @param {string} params.key - Redis键
 * @param {string} [params.value] - 操作值 (对于 insert 和 update 操作)
 * @returns {Promise} 返回云函数执行结果
 */
async function main(params) {
    const client = redis.createClient({
        host: 'localhost',
        port: '6379',
    });

    client.on('error', (error) => {
        console.error(error);
        throw new Error(error.message);
    });

    try {
        switch (params.action) {
            case 'select':
                // 使用 GET 命令读取键值
                return await getRedisValue(client, params.key);
            case 'insert':
            case 'update':
                // 使用 SET 命令设置键值
                return await setRedisValue(client, params.key, params.value);
            case 'delete':
                // 使用 DEL 命令删除键
                return await deleteRedisKey(client, params.key);
            default:
                throw new Error('Unsupported action type');
        }
    } finally {
        client.quit();
    }
}

function getRedisValue(client, key) {
    return new Promise((resolve, reject) => {
        client.get(key, (error, result) => {
            if (error) {
                reject(error);
            } else {
                resolve({ result });
            }
        });
    });
}

function setRedisValue(client, key, value) {
    return new Promise((resolve, reject) => {
        client.set(key, value, (error, result) => {
            if (error) {
                reject(error);
            } else {
                resolve({ result });
            }
        });
    });
}

function deleteRedisKey(client, key) {
    return new Promise((resolve, reject) => {
        client.del(key, (error, result) => {
            if (error) {
                reject(error);
            } else {
                resolve({ result });
            }
        });
      })
}