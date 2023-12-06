import http from 'k6/http'
import { check, sleep } from 'k6'

export let options = {
  //忽略证书错误

  stages: [
    { duration: '30s', target: 20 }, // 模拟 20 个用户 30 秒
    // { duration: '1m', target: 50 },  // 模拟 50 个用户 1 分钟
  ],
}

export default function () {
  let params = {
    headers: {
      'Content-Type': 'application/json',
    },
  }
  /**@description 传入的参数 
   * @param {string} action - 操作类型（select、insert、update、delete)
   * @param {string} msg - 操作信息(查询：无，插入：插入的数据，更新：更新的数据，删除：删除的条件)
   * */
  let body = JSON.stringify({
    action: 'insert',
    msg: 'k6 test'
  })

  let response = http.post('https://localhost:31001/api/23bc46b1-71f6-4ed5-8c54-816aa4f8c502/myapi/testDb', body, params)

  check(response, {
    'is status 200': (r) => r.status === 200,
    'is duration < 500ms': (r) => r.timings.duration < 500
  })

  sleep(1)
}
