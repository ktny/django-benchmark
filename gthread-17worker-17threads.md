ktny@LAPTOP-NQRUKFHB:~/workspaces/django-benchmark$ ab -n 10000 -c 1000 http://localhost:8000/
This is ApacheBench, Version 2.3 <$Revision: 1843412 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking localhost (be patient)
Completed 1000 requests
Completed 2000 requests
Completed 3000 requests
Completed 4000 requests
Completed 5000 requests
Completed 6000 requests
Completed 7000 requests
Completed 8000 requests
Completed 9000 requests
Completed 10000 requests
Finished 10000 requests


Server Software:        gunicorn
Server Hostname:        localhost
Server Port:            8000

Document Path:          /
Document Length:        13 bytes

Concurrency Level:      1000
Time taken for tests:   3.458 seconds
Complete requests:      10000
Failed requests:        0
Total transferred:      2930000 bytes
HTML transferred:       130000 bytes
Requests per second:    2891.88 [#/sec] (mean)
Time per request:       345.795 [ms] (mean)
Time per request:       0.346 [ms] (mean, across all concurrent requests)
Transfer rate:          827.46 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    3   7.3      0      37
Processing:     1  251 593.8     44    3214
Waiting:        1  249 594.0     42    3214
Total:          2  254 593.6     46    3214

Percentage of the requests served within a certain time (ms)
  50%     46
  66%     73
  75%    100
  80%    146
  90%   1046
  95%   1307
  98%   3139
  99%   3157
 100%   3214 (longest request)
