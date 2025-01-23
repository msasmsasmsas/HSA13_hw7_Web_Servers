# HSA13_hw7_Web_Servers

docker-compose up --build
docker-compose exec test sh /scripts/test_web-proxy.sh
docker-compose exec test sh /scripts/purge_image1.sh

docker-compose exec test sh /scripts/test_web.sh
