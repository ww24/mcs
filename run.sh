#!/bin/sh

docker run -itd -v $(pwd)/data:/data -p 25565:25565 --name mcs --log-driver=syslog mcs
