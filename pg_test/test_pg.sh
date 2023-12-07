#!/bin/bash
k6 run --insecure-skip-tls-verify test.js -u 10 -d 15s -q
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 100 -d 15s -q > result_day1206/15_100.txt
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 150 -d 15s -q > result_day1206/15_150.txt
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 200 -d 15s -q > result_day1206/15_200.txt
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 250 -d 15s -q > result_day1206/15_250.txt
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 300 -d 15s -q > result_day1206/15_300.txt
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 350 -d 15s -q > result_day1206/15_350.txt
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 400 -d 15s -q > result_day1206/15_400.txt
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 450 -d 15s -q > result_day1206/15_450.txt
sleep 10s
k6 run --insecure-skip-tls-verify test.js -u 500 -d 15s -q > result_day1206/15_500.txt