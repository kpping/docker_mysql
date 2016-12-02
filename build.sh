#!/bin/bash

NAME="MYSQL_5.6"
PORT=3306
PASSWORD="root"

docker run --name $NAME -p 3306:$PORT -e MYSQL_ROOT_PASSWORD=$PASSWORD -d mysql/mysql-server:5.6
