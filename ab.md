# ab -n 100 -c 100 したときの比較調査

# django runserver

```txt
This is ApacheBench, Version 2.3 <$Revision: 1843412 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking localhost (be patient).....done


Server Software:        WSGIServer/0.2
Server Hostname:        localhost
Server Port:            8000

Document Path:          /
Document Length:        13 bytes

Concurrency Level:      100
Time taken for tests:   7.697 seconds
Complete requests:      100
Failed requests:        0
Total transferred:      29500 bytes
HTML transferred:       1300 bytes
Requests per second:    12.99 [#/sec] (mean)
Time per request:       7696.974 [ms] (mean)
Time per request:       76.970 [ms] (mean, across all concurrent requests)
Transfer rate:          3.74 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    3   0.4      3       3
Processing:     5 1856 1871.0   1452    7692
Waiting:        2 1845 1873.0   1446    7688
Total:          5 1859 1871.0   1454    7694

Percentage of the requests served within a certain time (ms)
  50%   1454
  66%   1906
  75%   2730
  80%   2754
  90%   4400
  95%   7676
  98%   7692
  99%   7694
 100%   7694 (longest request)
```

# gunicorn (1 worker)

```txt
This is ApacheBench, Version 2.3 <$Revision: 1843412 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking localhost (be patient).....done


Server Software:        gunicorn
Server Hostname:        localhost
Server Port:            8000

Document Path:          /
Document Length:        13 bytes

Concurrency Level:      100
Time taken for tests:   0.069 seconds
Complete requests:      100
Failed requests:        0
Total transferred:      29300 bytes
HTML transferred:       1300 bytes
Requests per second:    1440.69 [#/sec] (mean)
Time per request:       69.411 [ms] (mean)
Time per request:       0.694 [ms] (mean, across all concurrent requests)
Transfer rate:          412.23 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    4   1.1      4       6
Processing:     2   33  16.0     34      59
Waiting:        2   33  16.1     34      59
Total:          8   37  15.1     38      62

Percentage of the requests served within a certain time (ms)
  50%     38
  66%     46
  75%     50
  80%     53
  90%     57
  95%     60
  98%     61
  99%     62
 100%     62 (longest request)
```

# gunicorn (17 worker processes)

```txt
This is ApacheBench, Version 2.3 <$Revision: 1843412 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking localhost (be patient).....done


Server Software:        gunicorn
Server Hostname:        localhost
Server Port:            8000

Document Path:          /
Document Length:        13 bytes

Concurrency Level:      100
Time taken for tests:   0.049 seconds
Complete requests:      100
Failed requests:        0
Total transferred:      29300 bytes
HTML transferred:       1300 bytes
Requests per second:    2061.73 [#/sec] (mean)
Time per request:       48.503 [ms] (mean)
Time per request:       0.485 [ms] (mean, across all concurrent requests)
Transfer rate:          589.93 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    2   0.4      2       3
Processing:    10   28   6.9     31      36
Waiting:        9   27   7.2     31      36
Total:         12   31   6.8     33      38

Percentage of the requests served within a certain time (ms)
  50%     33
  66%     34
  75%     35
  80%     36
  90%     37
  95%     38
  98%     38
  99%     38
 100%     38 (longest request)
```

# gunicorn (17 worker threads)

```txt
This is ApacheBench, Version 2.3 <$Revision: 1843412 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking localhost (be patient).....done


Server Software:        gunicorn
Server Hostname:        localhost
Server Port:            8000

Document Path:          /
Document Length:        13 bytes

Concurrency Level:      100
Time taken for tests:   0.108 seconds
Complete requests:      100
Failed requests:        0
Total transferred:      29300 bytes
HTML transferred:       1300 bytes
Requests per second:    930.12 [#/sec] (mean)
Time per request:       107.513 [ms] (mean)
Time per request:       1.075 [ms] (mean, across all concurrent requests)
Transfer rate:          266.14 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    3   0.9      3       5
Processing:     3   52  27.1     53      98
Waiting:        2   51  27.8     51      98
Total:          7   56  26.4     56     100

Percentage of the requests served within a certain time (ms)
  50%     56
  66%     72
  75%     80
  80%     83
  90%     95
  95%     97
  98%    100
  99%    100
 100%    100 (longest request)
```
