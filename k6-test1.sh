#!/bin/bash
k6 run ---insecure-skip-tls-verify test.js -u 100 -d 60s -q
sleep 10s
k6 run ---insecure-skip-tls-verify test.js -u 100 -d 60s -q > result_day12_6/100_100.txt
sleep 10s
k6 run ---insecure-skip-tls-verify test.js -u 150 -d 60s -q > result_day12_6/100_150.txt
sleep 10s
k6 run ---insecure-skip-tls-verify test.js -u 200 -d 60s -q > result_day12_6/100_200.txt
sleep 10s
k6 run ---insecure-skip-tls-verify test.js -u 250 -d 60s -q > result_day12_6/100_250.txt
sleep 10s
k6 run ---insecure-skip-tls-verify test.js -u 300 -d 60s -q > result_day12_6/100_300.txt
sleep 10s
k6 run ---insecure-skip-tls-verify test.js -u 350 -d 60s -q > result_day12_6/100_350.txt
sleep 10s
k6 run ---insecure-skip-tls-verify test.js -u 400 -d 60s -q > result_day12_6/100_400.txt
sleep 10s
k6 run ---insecure-skip-tls-verify test.js -u 450 -d 60s -q > result_day12_6/100_450.txt
sleep 10s
k6 run ---insecure-skip-tls-verify test.js -u 500 -d 60s -q > result_day12_6/100_500.txt