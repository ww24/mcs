MCS
===

Minecraft Server with Minecraft Forge

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

Notice
------
* `data` directory is working directory for minecraft.
* The container mount `data` directory on host.
* Mod installation directory is `data/mods`.
