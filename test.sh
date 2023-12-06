#!/bin/bash
k6 run --insecure-skip-tls-verify test-k6.js -u 100 -d 60s -q
sleep 10s
k6 run --insecure-skip-tls-verify test-k6.js -u 100 -d 60s -q > result_day1206/100_100.txt
sleep 10s
k6 run --insecure-skip-tls-verify test-k6.js -u 150 -d 60s -q > result_day1206/100_150.txt
sleep 10s
k6 run --insecure-skip-tls-verify test-k6.js -u 200 -d 60s -q > result_day1206/100_200.txt
sleep 10s
k6 run --insecure-skip-tls-verify test-k6.js -u 250 -d 60s -q > result_day1206/100_250.txt
sleep 10s
k6 run --insecure-skip-tls-verify test-k6.js -u 300 -d 60s -q > result_day1206/100_300.txt
sleep 10s
k6 run --insecure-skip-tls-verify test-k6.js -u 350 -d 60s -q > result_day1206/100_350.txt
sleep 10s
k6 run --insecure-skip-tls-verify test-k6.js -u 400 -d 60s -q > result_day1206/100_400.txt
sleep 10s
k6 run --insecure-skip-tls-verify test-k6.js -u 450 -d 60s -q > result_day1206/100_450.txt
sleep 10s
k6 run --insecure-skip-tls-verify test-k6.js -u 500 -d 60s -q > result_day1206/100_500.txt

