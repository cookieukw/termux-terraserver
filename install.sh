#!/bin/bash
apt upgrade -y && apt update
if ! command -v mono &> /dev/null; then
    echo "Instaling mono..."
    apt update
    pkg install mono
fi
termux-change-repo
apt upgrade -y && apt update
if ! command -v unzip &> /dev/null; then
    echo "Installing unzip..."
    apt update
    pkg install unzip
fi

curl -O https://terraria.org/api/download/pc-dedicated-server/terraria-server-1449.zip
unzip terraria-server-1449.zip
rm terraria-server-1449.zip
chmod +x 1449/Linux/TerrariaS*
rm 1449/Linux/System*
rm 1449/Linux/Mono*
rm 1449/Linux/monoconfig
rm 1449/Linux/mscorlib.dll
echo -e "mono --server -O=all ./TerrariaServer.exe" > 1449/Linux/run.sh
chmod +x 1449/Linux/run.sh
mv 1449 ..
cls
