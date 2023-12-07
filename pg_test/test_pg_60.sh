#!/bin/bash
k6 run --insecure-skip-tls-verify test.js -u 10 -d 60s -q > result_day1206/60_10.txt
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 15 -d 60s -q > result_day1206/60_15.txt
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 20 -d 60s -q > result_day1206/60_20.txt
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 25 -d 60s -q > result_day1206/60_25.txt
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 30 -d 60s -q > result_day1206/60_30.txt
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 35 -d 60s -q > result_day1206/60_35.txt
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 40 -d 60s -q > result_day1206/60_40.txt
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 45 -d 60s -q > result_day1206/60_45.txt
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 50 -d 60s -q > result_day1206/60_50.txt