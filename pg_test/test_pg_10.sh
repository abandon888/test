#!/bin/bash
k6 run --insecure-skip-tls-verify test.js -u 10 -d 10s -q
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 10 -d 10s -q > result_day1206/10_10.txt
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 15 -d 10s -q > result_day1206/10_15.txt
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 20 -d 10s -q > result_day1206/10_20.txt
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 25 -d 10s -q > result_day1206/10_25.txt
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 30 -d 10s -q > result_day1206/10_30.txt
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 35 -d 10s -q > result_day1206/10_35.txt
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 40 -d 10s -q > result_day1206/10_40.txt
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 45 -d 10s -q > result_day1206/10_45.txt
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 50 -d 10s -q > result_day1206/10_50.txt