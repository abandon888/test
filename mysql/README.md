# api
暴露接口有时会没用，使用curl可先测试接口是否可用
```bash
curl -k -X POST -H "Content-Type: application/json" -d '{"action": "insert", "msg": "k6 test"}' https://localhost:31001/api/23bc46b1-71f6-4ed5-8c54-816aa4f8c502/v1/test -k
```
# k6运行
```bash
k6 run --insecure-skip-tls-verify test-k6.js
```
# 列出所有的暴露api
```bash
wsk api list -i
```
# mysql数据库测试
mysql -h pc-j6c0uhn5he1wblpq9.mysql.polardb.rds.aliyuncs.com -P 3306 -u root1 -pGaojing030113