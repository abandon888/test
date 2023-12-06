const mysql = require('mysql')

// 数据库配置
const dbConfig = {
  host: 'pc-t4n2foqc34n13t1pt.mysql.polardb.singapore.rds.aliyuncs.com',
  user: 'root1',
  password: 'Gaojing030113',
  database: 'test',
}

const connection = mysql.createConnection(dbConfig)

connection.connect((err) => {
  if (err) {
    console.error('连接数据库失败:', err)
    process.exit(1)
  }

  console.log('连接成功')
  connection.end()
})
