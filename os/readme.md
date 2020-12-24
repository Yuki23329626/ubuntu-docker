## home
把任何你需要的東西放在這個資料夾底下 ./home/  
任何你放在實體機的 ./home/ 資料夾下的內容，會被同步到 container 的 /home 資料夾底下  

## Dockerfile

你可以在這裡編輯 ubuntu 的版本

例如:  
  
FROM ubuntu:18.04  
or  
FROM ubuntu:16.04  

更多範例可以參考 docker hub 上關於 tag 的資訊 [ubuntu - Docker Hub](https://hub.docker.com/_/ubuntu)  

### RUN
可以在 container 裡面執行本來需要在 shell 執行的命令  

### ENTRYPOINT
可以透過 shell script 來執行一些像是參數設定的操作  
