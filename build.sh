#!/bin/sh

NAME="MYSQL5.6"
PORT=3306
PASSWORD="root"
DATA="$HOME/Docker/MYSQL5.6/data"

mkdir $DATA

docker run --name $NAME -p 3306:$PORT -e MYSQL_ROOT_PASSWORD=$PASSWORD -e MYSQL_ROOT_HOST=172.17.0.1 -d -v $DATA:/var/lib/mysql mysql/mysql-server:5.6
