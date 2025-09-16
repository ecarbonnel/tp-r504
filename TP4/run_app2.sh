docker run -d \
  --name tp4-app2 \
  --network net-tp4 \
  -p 5001:5000 \
  --mount type=bind,source=/home/user/tp-r504/TP4/srv/,target=/srv/ \
  im2-tp4
