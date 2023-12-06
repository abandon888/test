import http from 'k6/http'
import { sleep } from 'k6'
import { Rate } from 'k6/metrics'

const urls = [
  'https://localhost:31001/api/23bc46b1-71f6-4ed5-8c54-816aa4f8c502/test/pg',
]

// const api1Rate = 0.3; // 30%用api1测试
// const api2Rate = 0.7; // 70%用api2测试

const getRateApi1 = new Rate('get_rate_api1')
// const getRateApi2 = new Rate('get_rate_api2');

export const options = {
  vus: 100, // 要模拟的并发用户数
  duration: '30s', // 测试的时长
}

export default function () {
  let url = urls[0]

  const headers = { 'Content-Type': 'application/json' } // 请求头
  const id = Math.floor(Math.random() * 9999) + 1 // 随机生成id
  const key1 = `xuz${String(id).padStart(4, '0')}` // 生成key1
  const key2 = `value${String(id).padStart(4, '0')}` // 生成key2
  const body = JSON.stringify({
    action: 'insert',
    msg: {
      key1,
      key2,
    },
  })



  const res = http.post(url, JSON.stringify(body), { headers: headers })

  getRateApi1.add(res.status === 200) // 记录api1请求成功的比例
  // if (url === urls[0]) {
  //   getRateApi1.add(res.status === 200); // 记录api1请求成功的比例
  // } else {
  //   getRateApi2.add(res.status === 200); // 记录api2请求成功的比例
  // }

  sleep(1)
}
