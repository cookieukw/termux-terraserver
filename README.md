# termux-terraserver
#### Use Termux for Terraria Server

### How to install

## Basic

- Install git
```bash
apt upgrade -y && apt update
```

```bash
pkg install git
```

- Clone repository
```bash
git clone https://github.com/cookieukw/termux-terraserver
```

- Install install.sh
```bash
bash install.sh
```

- Install mono, for this change the repository for Grimle
```bash
termux-change-repo
```

- Now install mono
```bash
apt upgrade -y && apt update
```

- Note for mono: when asking you install ssl press enter (default)
```bash
pkg install mono
```

- Now run the server
```bash
mono --server -O=all ./1449/Linux/TerrariaServer.exe
```

## Advance

```bash
apt upgrade -y && apt update
```
```bash
pkg install unzip
```

```bash
curl -0 https://terraria.org/api/download/pc-dedicated-server/terraria-server-1449.zip
```

```bash
chmod +x 1449/Linux/TerrariaS*
```

### Install mono | Warning: after that libssl.so.1.1 not found (reinstall termux for fix this)

- Note for termux - Change Repo for termux
- choose Grimle for main repository and ok
  
```bash
termux-change-repo
```

```bash
apt upgrade -y && apt update
```

 - Note for mono: when asking you install ssl press enter (default)
```bash
pkg install mono
```

- After that the libssl not found more.

### Terraria Server

- When install all you can use mono for run TerrariaServer.exe. But you need to delete some files for fix errors when mono run TerrariaServer.exe, that error is return Nothing.

- Delete files
```
rm 1449/Linux/System*
rm 1449/Linux/Mono*
rm 1449/Linux/monoconfig
rm 1449/Linux/mscorelib.dll
```
## Run Terraria Server in Termux

- So, that's be right, now you can run the server
```bash
cd 1449/Linux
```

## Run the run.sh file to run the server
```bash
bash run.sh
```
- You can create new world, delete world or chose world. Etc... But if you don't want select the world, or create a new world, set seed, size, etc... You can use a config file.

## Create config file example (Optional):
- Create config fil in home: myconfig.txt
```html
world=/data/data/com.termux/files/home/world.wld
autocreate=1
worldname=MyWorld
worldpath=/data/data/com.termux/files/home
```

or more specific
```bash
mono --server -O=all ./TerrariaServer.exe -config $PWD/myconfig.txt
```

```bash
mono --server -O=all ./TerrariaServer.exe -config /data/data/com.termux/files/home/myconfig.txt
```
-----------

# If you like this, please give me a star! <3 Love ya
