const redis = require('redis');

// 创建一个 Redis 客户端
const client = redis.createClient({
    host: 'localhost',
    port: 6379
});

// 监听错误事件
client.on('error', (err) => console.log('Redis Client Error', err));

// 连接到 Redis
client.connect();

// 测试连接
async function testRedis() {
    await client.set('test_key', 'Hello, Redis!');
    const value = await client.get('test_key');
    console.log(value);
}

testRedis();
