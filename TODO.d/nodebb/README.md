## NodeBB
docker run -d -p 6379:6379 --name nodebb-redis redis:latest
docker run -it --name nodebb --link nodebb-redis:redis -p 80:4567 ondrejmo/nodebb
## location for redis is redis
