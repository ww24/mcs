MCS
===

Minecraft Server

How to build
------------
```
docker build -t mcs .
```

How to run
----------
```
docker run -it -v $(pwd)/data:/data -p 25565:25565 --name mcs mcs
```
