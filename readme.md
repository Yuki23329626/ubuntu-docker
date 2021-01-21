# ubuntu-docker
Running Ubuntu in docker container. Useful in establishing an environment for the purpose of experiment.  
在 docker container 上執行 ubuntu，方便進行各種需要 ubuntu 環境的測試

## Requirements
Install following tools in your physical environment(實體機器):  
- [docker](https://docs.docker.com/engine/install/)
- [docker-compose](https://docs.docker.com/compose/install/)
- ssh client with x11-forwarding(e.g. MobaXterm)

### build

透過 docker-compose 使用 ubuntu 的 image 建立 container

```bash
sh build.sh
```

### attach

進到你 container 上的 bash

```bash
sh attach.sh
```

### stop

停止你的 container

```bash
sh stop.sh
```

### 備註
有需要的話，可以進到 shell script 了解 docker 相關指令  
或是到下方 references 提供的連結學習如何使用 docker & docker-compose  

## How to run GUI app on docker(only on unix-like system)
### <span style="color:#ff0000;"> 重要 - 已經使用 shell script 將下述動作自動化，有問題可以嘗試手動添加 </span>  
### <span style="color:#ff0000;"> 目前只在 .10 的  server 上測試過，系統為 ubuntu 18.04 </span>

[Youtube影片教學](https://www.youtube.com/watch?v=RDg6TRwiPtg)
1. 查詢目前使用的 X11-forwarding 使用的是哪一個 port
```bash
echo $DISPLAY
```
如果是顯示 "localhost:14.0" 則為 6014 這個 port

2. 使用 xauth 找到你的對應繪圖卡的資訊，並複製該資訊
```bash
xauth list
```
例如 port 為 6014 則複製編號 14 的資訊  
e.g.: "hsng-server/unix:14  MIT-MAGIC-COOKIE-1  050fe03564e7cc3a8c84b60ec26f0b85"

3. 在你的虛擬機上使用 xauth add 加上之前複製的資訊
```bash
xauth add hsng-server/unix:14  MIT-MAGIC-COOKIE-1  050fe03564e7cc3a8c84b60ec26f0b85
```

4. 隨便執行一個圖形化介面程式進行測試，我使用的是 firefox
```bash
apt-get update
apt-get install -y firefox
firefox
```

## 關於 export DISPLAY=:0.0 的解釋
1. [背景知識講解](https://blog.csdn.net/lu_embedded/article/details/52945455)

## References
1. [Docker 教學](https://github.com/twtrubiks/docker-tutorial)  
2. [Docker & docker-compose 教學](https://www.runoob.com/docker/docker-compose.html) 

## 無關緊要的備註
1. 安裝 maven ，需要安裝 default-jdk，不要安裝 default-jre，因為 aws kvs maven 只支援 1.8 的超老舊版本  
  要安裝 maven 官網下載的 zip 檔案，把其中的 bin 設置到 PATH 中，另外 MAVEN_HOME 設置為 maven 根目錄  

