docker network create tplb

docker build -f tp-A/Dockerfile -t im-nginx-lb tp-A

mkdir -p shared1
mkdir -p shared2

echo "<h1>Hello 1</h1>" > shared1/index.html
echo "<h1>Hello 2</h2>" > shared2/index.html

docker run -d --rm --name nginx1 \
  -p 81:80 \
  -v $(pwd)/shared1:/usr/share/nginx/html \
  --network tplb \
  nginx

docker run -d --rm --name nginx2 \
  -p 82:80 \
  -v $(pwd)/shared2:/usr/share/nginx/html \
  --network tplb \
  nginx

docker run -d --rm --name im-nginx-ct \
  -p 83:80 \
  --network tplb \
  im-nginx-lb

