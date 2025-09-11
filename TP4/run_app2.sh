docker run -d \
  --name tp4-app2 \
  --network net-tp4 \
  -p 5001:5000 \
  --mount type=bind,source=/srv/,target=/srv/ \
  im2-tp4
