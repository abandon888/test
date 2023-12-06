# 创建Action
```bash
zip -r test.zip *
wsk -i action update testPg test.zip --kind nodejs:default
wsk -i action invoke testPg --result --param action insert --param msg myValue
```

# 创建Api
```bash
wsk -i api create /test /pg post testPg --response-type json
```
返回api:
`https://localhost:31001/api/23bc46b1-71f6-4ed5-8c54-816aa4f8c502/test/pg`

# 测试Api
```bash
curl -k -X POST -H "Content-Type: application/json" -d '{"action": "insert", "msg": "k6 test"}' https://localhost:31001/api/23bc46b1-71f6-4ed5-8c54-816aa4f8c502/test/pg -k
```
