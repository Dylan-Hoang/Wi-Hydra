# Wi-Hydra
Software for Wi-Hydra

## Setup / Teardown

### 1. Build db
`docker build -t wihydra-db .`

### 2. Run db
`docker run --rm -it wihydra-db`

### 3. (Optional) Run with a mounted volume so data persists on the host
`docker run --rm -it -v $(pwd)/data:/data wihydra-db`

### 4. List containers (just in case you run detached)
`docker ps -a`

### 5. Stop a running container (if you started detached)
`docker stop <container_id_or_name>`

### 6. Delete the image (when you want to clean up)
`docker rmi my-sqlite-app`

### 7. To see what images you have on your PC
`docker images`