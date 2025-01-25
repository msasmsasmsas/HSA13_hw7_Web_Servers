# HSA13_hw7_Web_Servers

docker-compose up --build

```bash

[+] Running 4/4
 ✔ Network hsa13_hw7_web_servers_nginx_network  Created                                                                                                                                0.0s 
 ✔ Container web                                Started                                                                                                                                0.8s 
 ✔ Container hsa13_hw7_web_servers-test-1       Started                                                                                                                                0.8s 
 ✔ Container web-proxy                          Started                                                                                                                                0.9s 
(.venv) PS E:\HSA13\HSA13_hw7_Web_Servers\tests\scripts> docker-compose exec test sh /scripts/test_web_proxy.sh
First request:
HTTP/1.1 200 OK
Accept-Ranges: bytes
Connection: keep-alive
Content-Length: 265190
Content-Type: image/png
Date: Sat, 25 Jan 2025 20:17:25 GMT
ETag: "678abaea-40be6"
Last-Modified: Fri, 17 Jan 2025 20:17:46 GMT
Server: nginx/1.25.3
X-Cache-Status: MISS
X-Debug-Cache-Key: http://web-proxy/images/AI.png


Second request:
HTTP/1.1 200 OK
Accept-Ranges: bytes
Connection: keep-alive
Content-Length: 265190
Content-Type: image/png
Date: Sat, 25 Jan 2025 20:17:25 GMT
ETag: "678abaea-40be6"
Last-Modified: Fri, 17 Jan 2025 20:17:46 GMT
Server: nginx/1.25.3
X-Cache-Status: MISS
X-Debug-Cache-Key: http://web-proxy/images/AI.png


Third request:
HTTP/1.1 200 OK
Accept-Ranges: bytes
Connection: keep-alive
Content-Length: 265190
Content-Type: image/png
Date: Sat, 25 Jan 2025 20:17:25 GMT
ETag: "678abaea-40be6"
Last-Modified: Fri, 17 Jan 2025 20:17:46 GMT
Server: nginx/1.25.3
X-Cache-Status: HIT
X-Debug-Cache-Key: http://web-proxy/images/AI.png



```
```bash

(.venv) PS E:\HSA13\HSA13_hw7_Web_Servers\tests\scripts> docker-compose exec test sh /scripts/purge_image_web_proxy.sh
Sending PURGE request...
* Host web-proxy:80 was resolved.
* IPv6: (none)
* IPv4: 172.18.0.4
*   Trying 172.18.0.4:80...
* Connected to web-proxy (172.18.0.4) port 80
* using HTTP/1.x
> PURGE /purge/images/AI.png HTTP/1.1
> Host: web-proxy
> User-Agent: curl/8.11.1
> Accept: */*
>
< HTTP/1.1 200 OK
< Server: nginx/1.25.3
< Date: Sat, 25 Jan 2025 20:27:00 GMT
< Content-Type: text/html
< Content-Length: 171
< Connection: keep-alive
< X-Debug-Full-Uri: /purge/images/AI.png
< X-Debug-Purge-Key: http://web-proxy/images/AI.png
<
* Connection #0 to host web-proxy left intact
<html><head><title>Successful purge</title></head><body bgcolor="white"><center><h1>Successful purge</h1><p>Key : http://web-proxy/images/AI.png</p></center></body></html>Checking if cache is cleared...
HTTP/1.1 200 OK
Server: nginx/1.25.3
Date: Sat, 25 Jan 2025 20:27:00 GMT
Content-Type: image/png
Content-Length: 265190
Connection: keep-alive
Last-Modified: Fri, 17 Jan 2025 20:17:46 GMT
ETag: "678abaea-40be6"
X-Cache-Status: MISS
X-Debug-Cache-Key: http://web-proxy/images/AI.png
Accept-Ranges: bytes


```




```bash
(.venv) PS E:\HSA13\HSA13_hw7_Web_Servers\tests\scripts> docker-compose exec test sh /scripts/test_web_proxy.sh
First request:
HTTP/1.1 200 OK
Accept-Ranges: bytes
Connection: keep-alive
Content-Length: 265190
Content-Type: image/png
Date: Sat, 25 Jan 2025 20:27:47 GMT
ETag: "678abaea-40be6"
Last-Modified: Fri, 17 Jan 2025 20:17:46 GMT
Server: nginx/1.25.3
X-Cache-Status: MISS
X-Debug-Cache-Key: http://web-proxy/images/AI.png


Second request:
HTTP/1.1 200 OK
Accept-Ranges: bytes
Connection: keep-alive
Content-Length: 265190
Content-Type: image/png
Date: Sat, 25 Jan 2025 20:27:48 GMT
ETag: "678abaea-40be6"
Last-Modified: Fri, 17 Jan 2025 20:17:46 GMT
Server: nginx/1.25.3
X-Cache-Status: MISS
X-Debug-Cache-Key: http://web-proxy/images/AI.png


Third request:
HTTP/1.1 200 OK
Accept-Ranges: bytes
Connection: keep-alive
Content-Length: 265190
Content-Type: image/png
Date: Sat, 25 Jan 2025 20:27:48 GMT
ETag: "678abaea-40be6"
Last-Modified: Fri, 17 Jan 2025 20:17:46 GMT
Server: nginx/1.25.3
X-Cache-Status: HIT
X-Debug-Cache-Key: http://web-proxy/images/AI.png

```


