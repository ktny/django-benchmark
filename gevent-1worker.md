ktny@LAPTOP-NQRUKFHB:~/workspaces/django-benchmark$ ab -n 10000 -c 1000 http://localhost:8000/
This is ApacheBench, Version 2.3 <$Revision: 1843412 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/                                                                                                                                                                                                        Benchmarking localhost (be patient)
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
Time taken for tests:   6.937 seconds
Complete requests:      10000
Failed requests:        0
Total transferred:      2930000 bytes
HTML transferred:       130000 bytes
Requests per second:    1441.57 [#/sec] (mean)
Time per request:       693.687 [ms] (mean)
Time per request:       0.694 [ms] (mean, across all concurrent requests)
Transfer rate:          412.48 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    2   7.1      0      38
Processing:    14  646 758.9    278    4657
Waiting:       13  646 758.9    277    4657
Total:         49  648 759.0    279    4673

Percentage of the requests served within a certain time (ms)
  50%    279
  66%    410
  75%   1127
  80%   1292
  90%   1479
  95%   2081
  98%   3289
  99%   3323
 100%   4673 (longest request)
