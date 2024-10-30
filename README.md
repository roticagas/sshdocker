# sshdocker
simple ssh docker server


# step by step after clone this repository
mkdir data

docker compose build

docker compose up -d

## then you can ssh to this server with port 32222, username root , password docker, when upload file to /data, file will be uploaded into ./data directory
