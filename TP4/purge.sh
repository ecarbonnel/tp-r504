docker stop $(docker ps) > /dev/null 2>/dev/null
docker rm $(docker ps -aq) > /dev/null 2>/dev/null
