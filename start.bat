@echo off
echo "Do you agree to the Mojang EULA available at https://account.mojang.com/documents/minecraft_eula ?"
set /p EULA=[y/n]
IF /I "%EULA%" NEQ "y" GOTO END
echo eula=true>eula.txt
:END
java.exe -server -XX:+UseG1GC -XX:+UnlockExperimentalVMOptions -Xmx4096M -Xms4096M -jar  nogui