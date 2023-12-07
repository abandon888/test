#!/bin/bash
k6 run --insecure-skip-tls-verify test.js -u 10 -d 30s -q > result_day1206/30_10.txt
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 15 -d 30s -q > result_day1206/30_15.txt
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 20 -d 30s -q > result_day1206/30_20.txt
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 25 -d 30s -q > result_day1206/30_25.txt
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 30 -d 30s -q > result_day1206/30_30.txt
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 35 -d 30s -q > result_day1206/30_35.txt
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 40 -d 30s -q > result_day1206/30_40.txt
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 45 -d 30s -q > result_day1206/30_45.txt
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 50 -d 30s -q > result_day1206/30_50.txt