# Based on **tony2001/pinba**, adding :

* mysql-client & tcpdump
* setup a pinba command to dig into pinba metrics

## Run using
```
docker run -p 8306:3306 -p 30002:30002/udp matgillot/pinba-server
```

## Connect using
```
docker exec -it [CONTAINER] bash
```

then just use "pinba" command