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