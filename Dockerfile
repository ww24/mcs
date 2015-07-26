# minecraft server
FROM java:openjdk-8-jre
MAINTAINER Takenori Nakagawa <ww24gm+oss@gmail.com>

EXPOSE 25565

ENV FORGE_VERSION=1.8-11.14.3.1450

RUN mkdir /install
WORKDIR /install

RUN wget -q http://files.minecraftforge.net/maven/net/minecraftforge/forge/$FORGE_VERSION/forge-$FORGE_VERSION-installer.jar

RUN echo "70c903bc016cf972634be1245adb76d86ee9823b  forge-$FORGE_VERSION-installer.jar" | sha1sum -c

RUN java -jar forge-$FORGE_VERSION-installer.jar nogui --installServer

VOLUME ["/data"]
WORKDIR /data

RUN echo eula=true > eula.txt

ENTRYPOINT java -Xms1024M -Xmx2048M -jar /install/forge-$FORGE_VERSION-universal.jar
