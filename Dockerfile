FROM cm2network/steamcmd
LABEL author="Chris Kankiewicz <Chris@ChrisKankiewciz.com>"

RUN mkdir /home/steam/server

RUN ./steamcmd.sh +force_install_dir /home/steam/server +login anonymous +app_update 1690800 validate +quit

VOLUME ${HOME}/.config/Epic/FactoryGame/Saved/SaveGames
VOLUME ${HOME}/server/FactoryGame/Saved/Config/LinuxServer

EXPOSE 7777

WORKDIR /home/steam/server

CMD ["/home/steam/server/FactoryServer.sh"]
