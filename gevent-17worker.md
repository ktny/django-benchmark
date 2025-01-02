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
Time taken for tests:   3.872 seconds
Complete requests:      10000
Failed requests:        0
Total transferred:      2930000 bytes
HTML transferred:       130000 bytes
Requests per second:    2582.46 [#/sec] (mean)
Time per request:       387.228 [ms] (mean)
Time per request:       0.387 [ms] (mean, across all concurrent requests)
Transfer rate:          738.93 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    3   8.0      0      34
Processing:     3  283 736.4     34    3411
Waiting:        2  282 736.2     33    3410
Total:         16  286 736.9     34    3411

Percentage of the requests served within a certain time (ms)
  50%     34
  66%     42
  75%     50
  80%     68
  90%   1046
  95%   2002
  98%   3173
  99%   3225
 100%   3411 (longest request)
