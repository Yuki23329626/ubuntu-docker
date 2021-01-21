From ubuntu:18.04

RUN apt-get update
RUN apt-get install -y vim
RUN apt-get install -y git
RUN apt-get install -y curl
RUN apt-get install -y wget
RUN apt-get install -y python3-pip
RUN apt-get install -y zip
RUN apt-get install xauth
# RUN apt-get install -y gedit
# RUN apt-get install -y cmake
# RUN apt-get install gconf-service libasound2 libatk1.0-0 libc6 libcairo2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libglib2.0-0 libgtk-3-0 libnspr4 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 ca-certificates fonts-liberation libappindicator1 libnss3 lsb-release xdg-utils wget

COPY home/profile /etc/
#COPY home/.bashrc /root/
#COPY assets/entrypoint.sh /root/entrypoint.sh
