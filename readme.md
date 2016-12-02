# Build

```

sudo chmod +x build.sh

./build.sh
```

# Start

```

docker start MYSQL_5.6
```

# Stop

```

docker stop MYSQL_5.6
```

# Allow host to connect


```

# in host
docker exec -it MYSQL_5.6 mysql -uroot -p

# in container
CREATE USER 'host'@'localhost' IDENTIFIED BY 'host';

GRANT ALL PRIVILEGES ON *.* TO 'host'@'localhost' WITH GRANT OPTION;

CREATE USER 'host'@'%' IDENTIFIED BY 'host';

GRANT ALL PRIVILEGES ON *.* TO 'host'@'%' WITH GRANT OPTION;

FLUSH PRIVILEGES;

EXIT;
```

# Connect

MySQL client (e.g. Sequel Pro)

```

Host => 127.0.0.1

Username => host

Password => host
```
