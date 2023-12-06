#!/bin/bash
k6 run --insecure-skip-tls-verify test-k6.js -u 10 -d 15s -q
sleep 10s
k6 run --insecure-skip-tls-verify test-k6.js -u 10 -d 15s -q > result_day1206/15_10.txt
sleep 10s
k6 run --insecure-skip-tls-verify test-k6.js -u 15 -d 15s -q > result_day1206/15_15.txt
sleep 10s
k6 run --insecure-skip-tls-verify test-k6.js -u 20 -d 15s -q > result_day1206/15_20.txt
sleep 10s
k6 run --insecure-skip-tls-verify test-k6.js -u 25 -d 15s -q > result_day1206/15_25.txt
sleep 10s
k6 run --insecure-skip-tls-verify test-k6.js -u 30 -d 15s -q > result_day1206/15_30.txt
sleep 10s
k6 run --insecure-skip-tls-verify test-k6.js -u 35 -d 15s -q > result_day1206/15_35.txt
sleep 10s
k6 run --insecure-skip-tls-verify test-k6.js -u 40 -d 15s -q > result_day1206/15_40.txt
sleep 10s
k6 run --insecure-skip-tls-verify test-k6.js -u 45 -d 15s -q > result_day1206/15_45.txt
sleep 10s
k6 run --insecure-skip-tls-verify test-k6.js -u 50 -d 15s -q > result_day1206/15_50.txt

