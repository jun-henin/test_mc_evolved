#!/bin/bash
echo "Do you agree to the Mojang EULA available at https://account.mojang.com/documents/minecraft_eula ?"
EULA=`read  -n 1 -p "[y/n] "`
if [ "$EULA" = "y" ]; then
    echo "eula=true" > eula.txt
fi
java -server -XX:+UseG1GC -XX:+UnlockExperimentalVMOptions -Xmx4096M -Xms4096M -jar  nogui