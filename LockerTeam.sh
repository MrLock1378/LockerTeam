#!/usr/bin/env bash

THIS_DIR=$(cd $(dirname $0); pwd)
cd $THIS_DIR

install() {
	    cd tg
		sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test
		sudo apt-get install g++-4.7 -y c++-4.7 -y
		sudo apt-get update
		sudo apt-get upgrade
		sudo apt-get install libreadline-dev -y libconfig-dev -y libssl-dev -y lua5.2 -y liblua5.2-dev -y lua-socket -y lua-sec -y lua-expat -y libevent-dev -y make unzip git redis-server autoconf g++ -y libjansson-dev -y libpython-dev -y expat libexpat1-dev -y
		sudo apt-get install screen -y
		sudo apt-get install tmux -y
		sudo apt-get install libstdc++6 -y
		sudo apt-get install lua-lgi -y
		sudo apt-get install libnotify-dev -y
		wget https://valtman.name/files/telegram-cli-1222
		mv telegram-cli-1222 tgcli
		chmod +x tgcli
		cd ..
		chmod +x bot
		chmod +x tg
		chmod +x autolocker.sh
}

function print_logo() {
	green "         ░@░L░o░c░k░e░r░T░e░a░m░         ░@░S░u░d░o░L░o░c░k░e░r░"
	green "         --L--O--C--K--E--R--T--E--A--M"
	green "         ░R░E░B░O░R░N░T░E░A░M░          ░@░B░O░T░R░E░B░O░R░N░_░C░H░"
	green "        ░@░S░u░d░o░L░o░c░k░e░r░          ░@░S░u░d░o░L░o░c░k░e░r░ "
	echo -e "\n\e[0m"
}

function logo_play() {
    declare -A txtlogo
    seconds="0.010"
    txtlogo[1]="░@░L░o░c░k░e░r░T░e░a░m░       ░@░S░u░d░o░L░o░c░k░e░r░"
    txtlogo[2]="--L--O--C--K--E--R--T--E--A--M         ░@░S░u░d░o░L░o░c░k░e░r░"
    txtlogo[3]="░R░E░B░O░R░N░T░E░A░M░         ░@░B░O░T░R░E░B░O░R░N░_░C░H░"
    txtlogo[4]="--L--O--C--K--E--R--T--E--A--M         ░@░S░u░d░o░L░o░c░k░e░r░"
    printf "\e[31m\t"
    for i in ${!txtlogo[@]}; do
        for x in `seq 0 ${#txtlogo[$i]}`; do
            printf "${txtlogo[$i]:$x:1}"
            sleep $seconds
        done
        printf "\n\t"
    done
    printf "\n"
	echo -e "\e[0m"
}

function lockerteam() {
	echo -e "\e[0m"
	green "     >>>>                       ░@░L░o░c░k░e░r░T░e░a░m░                                               "
	green "     >>>>                       ░B░e░y░o░n░d░-░L░o░c░k░e░r░ and...                                       "
	white "     >>>>                       edited by Mr:Mohammadreza  @SudoLocker                      "
	white "     >>>>                       @LockerTeam                                                "
	red   "     >>>>                       @BotReborn_ch                                                "
	red   "     >>>>                       @LockerSupport_BOT                                                  "
	echo -e "\e[0m"
}

red() {
  printf '\e[1;31m%s\n\e[0;39;49m' "$@"
}
green() {
  printf '\e[1;32m%s\n\e[0;39;49m' "$@"
}
white() {
  printf '\e[1;37m%s\n\e[0;39;49m' "$@"
}
update() {
	git pull
}

if [ "$1" = "install" ]; then
	print_logo
	lockerteam
	logo_play
	install
  else
if [ ! -f ./tg/tgcli ]; then
    echo "tg not found"
    echo "Run $0 install"
    exit 1
 fi
	print_logo
	lockerteam
	logo_play
   #sudo service redis-server restart
   ./tg/tgcli -s ./bot/bot.lua -l 1 -E $@
   #./tg/tgcli -s ./bot/bot.lua $@
fi
