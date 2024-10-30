# sshdocker
simple ssh docker server


# step by step after clone this repository
mkdir data

docker compose build

docker compose up -d

## then you can ssh to this server with username root , password docker, file will upload into ./data directory
