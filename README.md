<h1 align="center">Minecraft Script</h1>

This is a script I use to run my minecraft server on a Linux distribution. The advantage of using this shell script is that it passes the necessary Java arguments to optimize the server based on the machine's resources. To change the RAM setting:

```sh
-Xmx"A"G -Xms"A"G
```

Replace "A" with the correct number of dedicated GB. To change the Cores setting:

```sh
-XX:ParallelGCThreads="B"
```

Replace "B" with the correct number of dedicated cores.