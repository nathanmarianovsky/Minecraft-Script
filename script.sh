#!/bin/bash

sudo java -native -server -Xincgc -Xmx9G -Xms9G -XX:NewRatio=3 -Xrs -XX:+UseThreadPriorities -XX:CMSFullGCsBeforeCompaction=1 \
   -XX:SoftRefLRUPolicyMSPerMB=2048 -XX:+CMSParallelRemarkEnabled -XX:+UseParNewGC -XX:+DisableExplicitGC \
   -Xnoclassgc -oss4M -ss4M -XX:+UseFastAccessorMethods -XX:+UseCMSInitiatingOccupancyOnly -XX:CMSInitiatingOccupancyFraction=75 \
   -XX:+UseConcMarkSweepGC -XX:UseSSE=4 -XX:+UseCMSCompactAtFullCollection -XX:ParallelGCThreads=12 -Xcheck:jni -Xfuture -XX:+AggressiveOpts \
   -cp minecraft_server.jar -jar minecraft_server.jar nogui