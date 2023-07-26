#!/bin/bash
apt upgrade -y && apt update
pkg install unzip
curl -O https://terraria.org/api/download/pc-dedicated-server/terraria-server-1449.zip
unzip terraria-server-1449.zip
rm terraria-server-1449.zip
chmod +x 1449/Linux/TerrariaS*
echo -e "mono --server -O=all ./TerrariaServer.exe" > 1449/Linux/run.sh
chmod +x 1449/Linux/run.sh
rm 1449/Linux/System*
rm 1449/Linux/Mono*
rm 1449/Linux/monoconfig
rm 1449/Linux/mscorlib.dll
cls
echo -e "Select Grimle repo in main repository"
sleep 5
termux-change-repo
