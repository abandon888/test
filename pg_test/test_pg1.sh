#!/bin/bash
k6 run --insecure-skip-tls-verify test.js -u 10 -d 60s -q
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 10 -d 60s -q > result_day1206/100_10.txt
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 15 -d 60s -q > result_day1206/100_15.txt
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 20 -d 60s -q > result_day1206/100_20.txt
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 25 -d 60s -q > result_day1206/100_25.txt
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 30 -d 60s -q > result_day1206/100_30.txt
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 35 -d 60s -q > result_day1206/100_35.txt
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 40 -d 60s -q > result_day1206/100_40.txt
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 45 -d 60s -q > result_day1206/100_45.txt
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 50 -d 60s -q > result_day1206/100_50.txt