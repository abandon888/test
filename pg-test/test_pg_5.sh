#!/bin/bash
k6 run --insecure-skip-tls-verify test.js -u 10 -d 5s -q > result_day1206/5_10.txt
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 15 -d 5s -q > result_day1206/5_15.txt
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 20 -d 5s -q > result_day1206/5_20.txt
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 25 -d 5s -q > result_day1206/5_25.txt
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 30 -d 5s -q > result_day1206/5_30.txt
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 35 -d 5s -q > result_day1206/5_35.txt
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 40 -d 5s -q > result_day1206/5_40.txt
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 45 -d 5s -q > result_day1206/5_45.txt
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 50 -d 5s -q > result_day1206/5_50.txt