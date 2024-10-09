REPO_URL="https://https://github.com/nihad-hh/jap-week2" 
IMAGE_NAME_WEB1="nihad906/jap-week2-nihad-web1"
IMAGE_NAME_WEB2="nihad906/jap-week2-nihad-web2" 
IMAGE_NAME_PROXY="nihad906/jap-week2-nihad-proxy" 
TAG="latest" 
DOCKER_COMPOSE_FILE="docker-compose.yml" 

git clone "$REPO_URL"

cd jap-week2
cd App

wsl docker build -t "$IMAGE_NAME_WEB1:$TAG" ./web1/
wsl docker build -t "$IMAGE_NAME_WEB2:$TAG" ./web2/
wsl docker build -t "$IMAGE_NAME_PROXY:$TAG" ./proxy/

wsl docker push "$IMAGE_NAME_WEB1:$TAG"
wsl docker push "$IMAGE_NAME_WEB2:$TAG"
wsl docker push "$IMAGE_NAME_PROXY:$TAG"

docker-compose -f "$DOCKER_COMPOSE_FILE" up -d

echo "Finish"
