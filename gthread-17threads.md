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
Time taken for tests:   17.467 seconds
Complete requests:      10000
Failed requests:        1
   (Connect: 0, Receive: 0, Length: 1, Exceptions: 0)
Total transferred:      2929707 bytes
HTML transferred:       129987 bytes
Requests per second:    572.52 [#/sec] (mean)
Time per request:       1746.658 [ms] (mean)
Time per request:       1.747 [ms] (mean, across all concurrent requests)
Transfer rate:          163.80 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    2   7.3      0      46
Processing:    12 1155 3181.1    126   15942
Waiting:        0 1152 3178.3    125   15939
Total:         56 1157 3182.1    126   15943

Percentage of the requests served within a certain time (ms)
  50%    126
  66%    132
  75%    141
  80%    354
  90%   2039
  95%   9147
  98%  15116
  99%  15595
 100%  15943 (longest request)
