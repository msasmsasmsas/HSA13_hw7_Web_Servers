# HSA13_hw7_Web_Servers

docker-compose up --build

```bash
docker-compose exec test sh /scripts/test_web.sh

```bash
docker-compose exec test sh /scripts/purge_image.sh

```bash
docker-compose exec test sh /scripts/test_web.sh


(.venv) PS E:\HSA13\HSA13_hw7_Web_Servers> docker-compose exec test sh /scripts/test_web_proxy.sh
First request:
HTTP/1.1 200 OK
Accept-Ranges: bytes
Connection: keep-alive
Content-Length: 265190
Content-Type: image/png
Date: Sat, 25 Jan 2025 15:22:05 GMT
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
Date: Sat, 25 Jan 2025 15:22:06 GMT
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
Date: Sat, 25 Jan 2025 15:22:06 GMT
ETag: "678abaea-40be6"
Last-Modified: Fri, 17 Jan 2025 20:17:46 GMT
Server: nginx/1.25.3
X-Cache-Status: HIT
X-Debug-Cache-Key: http://web-proxy/images/AI.png

(.venv) PS E:\HSA13\HSA13_hw7_Web_Servers> docker-compose exec test sh /scripts/test_web.sh
First request:
HTTP/1.1 200 OK
Accept-Ranges: bytes
Connection: keep-alive
Content-Length: 265190
Content-Type: image/png
Date: Sat, 25 Jan 2025 15:23:05 GMT
ETag: "678abaea-40be6"
Last-Modified: Fri, 17 Jan 2025 20:17:46 GMT
Server: nginx/1.27.3


Second request:
HTTP/1.1 200 OK
Accept-Ranges: bytes
Connection: keep-alive
Content-Length: 265190
Content-Type: image/png
Date: Sat, 25 Jan 2025 15:23:06 GMT
ETag: "678abaea-40be6"
Last-Modified: Fri, 17 Jan 2025 20:17:46 GMT
Server: nginx/1.27.3


Third request:
HTTP/1.1 200 OK
Accept-Ranges: bytes
Connection: keep-alive
Content-Length: 265190
Content-Type: image/png
Date: Sat, 25 Jan 2025 15:23:06 GMT
ETag: "678abaea-40be6"
Last-Modified: Fri, 17 Jan 2025 20:17:46 GMT
Server: nginx/1.27.3



