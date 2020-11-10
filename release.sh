make setup
make release
docker buildx build --platform linux/amd64,linux/arm64 --push --tag cablespaghetti/musicbot:latest .
