## Drone.io
mkdir -p $volumes/drone && touch /var/lib/volumes/drone/drone.sqlite
docker run -d \
    --name drone \
    -p 8080:8080/tcp \
    -v $volumes/drone/drone.sqlite:/var/lib/drone/drone.sqlite \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -e DRONE_GITHUB_CLIENT <CLIENT_TOKEN_HERE> \
    -e DRONE_GITHUB_SECRET <CLIENT_SECRET_HERE> \
    ondrejmo/drone

export DRONE_SERVER_PORT=""export DRONE_SERVER_SSL_KEY=""export DRONE_SERVER_SSL_CERT=""# session settingsexport DRONE_SESSION_SECRET=""export DRONE_SESSION_EXPIRES=""# custom database settingsexport DRONE_DATABASE_DRIVER=""export DRONE_DATABASE_DATASOURCE=""# github configurationexport DRONE_GITHUB_CLIENT=""export DRONE_GITHUB_SECRET=""export DRONE_GITHUB_OPEN=false# github enterprise configurationexport DRONE_GITHUB_ENTERPRISE_CLIENT=""export DRONE_GITHUB_ENTERPRISE_SECRET=""export DRONE_GITHUB_ENTERPRISE_API=""export DRONE_GITHUB_ENTERPRISE_URL=""export DRONE_GITHUB_ENTERPRISE_PRIVATE_MODE=falseexport DRONE_GITHUB_ENTERPRISE_OPEN=false# bitbucket configurationexport DRONE_BITBUCKET_CLIENT=""export DRONE_BITBUCKET_SECRET=""export DRONE_BITBUCKET_OPEN=false# gitlab configurationexport DRONE_GITLAB_URL=""export DRONE_GITLAB_CLIENT=""export DRONE_GITLAB_SECRET=""export DRONE_GITLAB_SKIP_VERIFY=falseexport DRONE_GITLAB_OPEN=false# email configurationexport DRONE_SMTP_HOST=""export DRONE_SMTP_PORT=""export DRONE_SMTP_FROM=""export DRONE_SMTP_USER=""export DRONE_SMTP_PASS=""# worker nodes# these are optional. If not specified Drone will add# two worker nodes that connect to $DOCKER_HOSTexport DRONE_WORKER_NODES="tcp://0.0.0.0:2375,tcp://0.0.0.0:2375"
