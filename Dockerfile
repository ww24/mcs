# minecraft server
FROM java:openjdk-8-jre
MAINTAINER Takenori Nakagawa <ww24gm+oss@gmail.com>

EXPOSE 25565

VOLUME ["/data"]
WORKDIR /data

RUN wget -qO /minecraft_server.1.8.7.jar https://s3.amazonaws.com/Minecraft.Download/versions/1.8.7/minecraft_server.1.8.7.jar

ENV JVM_OPTS -Xmx1024M -Xms1024M
ENV TYPE=VANILLA VERSION=LATEST FORGEVERSION=RECOMMENDED LEVEL=world PVP=true DIFFICULTY=normal

ENTRYPOINT echo eula=true > /data/eula.txt && java -jar /minecraft_server.1.8.7.jar
