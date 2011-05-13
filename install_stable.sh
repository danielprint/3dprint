#!/bin/bash

echo 'Este script tem por finalidade instalar o programa de manipulação 
da impressora 3D a seguir lhe sera necessario fornecer algumas informações 
necessárias para continuarmos com a instalação'
sleep 5 
clear

echo " Detalhe importante, este script so funciona nos sintemas:
 
1) Ubuntu 11.04 
2) Ubuntu 10.10
3) Ubuntu 10.04
4) Fedora 14
5) OpenSuse 11.2 / SLED 11 SP1
6) para sair

Digite agora o numero referente a sua distribuição (ex.: 1 (para instalar no ubuntu 11.04)): " ; read sistema

if [ -z $sistema ]; then
   echo "Você tem de entrar com um parâmetro válido"
   exit
############################################################################################
elif [ $sistema = "1" ]; then

echo 'instalando no ubuntu 11.04 '

sudo apt-get install git-core build-essential intltool libtool libgtkglext1-dev libgtkmm-2.4-dev cmake 

clear 

echo ' o programa baixará nesse instante a biblioteca e o programa de execução para seu coputador
agurade...'

cd /home/

sudo git clone git@github.com:danielprint/3dprint.git

cd /home/3dprint/libreprap/

cmake CMakeCache.txt

make && sudo make install

cd /home/3dprint/repsnapper/

./autogen.sh
make

cd /home/3dprint/repsnapper/scr/

sudo make install

rm ~/.config/repsnapper/repsnapper.conf

cp /home/3dprint/repsnapper.conf ~/.conf/repsnapper/

rm /usr/local/etc/xdg/repsnapper/repsnapper.conf

cp /home/3dprint/repsnapper.conf /usr/local/etc/xdg/repsnapper

echo 'tudo esta feito agora para rodar o programa digite repsnapper
ou crie um lançador no seu desktop com esse mesmo nome'

sleep 3 
####################################################################################################
elif [ $sistema = "2" ]; then

echo 'instalando no ubuntu 10.10'

sudo apt-get install git-core build-essential automake intltool libtool libgtkmm-2.4-dev libgtkglext1-dev libglut3-dev cmake

clear 

echo ' o programa baixará nesse instante a biblioteca e o programa de execução para seu coputador
agurade...'

cd /home/

sudo git clone git@github.com:danielprint/3dprint.git

cd /home/3dprint/libreprap/

cmake CMakeCache.txt

make && sudo make install

cd /home/3dprint/repsnapper/

./autogen.sh
make

cd /home/3dprint/repsnapper/scr/

sudo make install

rm ~/.config/repsnapper/repsnapper.conf

cp /home/3dprint/repsnapper.conf ~/.conf/repsnapper/

rm /usr/local/etc/xdg/repsnapper/repsnapper.conf

cp /home/3dprint/repsnapper.conf /usr/local/etc/xdg/repsnapper

echo 'tudo esta feito agora para rodar o programa digite repsnapper
ou crie um lançador no seu desktop com esse mesmo nome'

sleep 3 
####################################################################################################
elif [ $sistema = "3" ]; then

	echo 'instalando no ubuntu 10.04'

sudo apt-get install git-core build-essential TODO cmake

clear 

echo ' o programa baixará nesse instante a biblioteca e o programa de execução para seu coputador
agurade...'

cd /home/

sudo git clone git@github.com:danielprint/3dprint.git

cd /home/3dprint/libreprap/

cmake CMakeCache.txt

make && sudo make install

cd /home/3dprint/repsnapper/

./autogen.sh
make

cd /home/3dprint/repsnapper/scr/

sudo make install

rm ~/.config/repsnapper/repsnapper.conf

cp /home/3dprint/repsnapper.conf ~/.conf/repsnapper/

rm /usr/local/etc/xdg/repsnapper/repsnapper.conf

cp /home/3dprint/repsnapper.conf /usr/local/etc/xdg/repsnapper

echo 'tudo esta feito agora para rodar o programa digite repsnapper
ou crie um lançador no seu desktop com esse mesmo nome'

sleep 3 

####################################################################################################
elif [ $sistema = "4" ]; then

	echo 'instalando no fedora 14'
su
yum install git gtk2-devel gcc-c++ gcc binutils make TODO cmake

clear 

echo ' o programa baixará nesse instante a biblioteca e o programa de execução para seu coputador
agurade...'

cd /home/

sudo git clone git@github.com:danielprint/3dprint.git

cd /home/3dprint/libreprap/

cmake CMakeCache.txt

make && sudo make install

cd /home/3dprint/repsnapper/

./autogen.sh
make

cd /home/3dprint/repsnapper/scr/

sudo make install

rm ~/.config/repsnapper/repsnapper.conf

cp /home/3dprint/repsnapper.conf ~/.conf/repsnapper/

rm /usr/local/etc/xdg/repsnapper/repsnapper.conf

cp /home/3dprint/repsnapper.conf /usr/local/etc/xdg/repsnapper

echo 'tudo esta feito agora para rodar o programa digite repsnapper
ou crie um lançador no seu desktop com esse mesmo nome'

sleep 3 

####################################################################################################
elif [ $sistema = "5" ]; then

	echo 'instalando no OpenSuse 11.2 / SLED 11 SP1'
sudo zypper install TODO cmake

clear 

echo ' o programa baixará nesse instante a biblioteca e o programa de execução para seu coputador
agurade...'

cd /home/

sudo git clone git@github.com:danielprint/3dprint.git

cd /home/3dprint/libreprap/

cmake CMakeCache.txt

make && sudo make install

cd /home/3dprint/repsnapper/

./autogen.sh
make

cd /home/3dprint/repsnapper/scr/

sudo make install

rm ~/.config/repsnapper/repsnapper.conf

cp /home/3dprint/repsnapper.conf ~/.conf/repsnapper/

rm /usr/local/etc/xdg/repsnapper/repsnapper.conf

cp /home/3dprint/repsnapper.conf /usr/local/etc/xdg/repsnapper

echo 'tudo esta feito agora para rodar o programa digite repsnapper
ou crie um lançador no seu desktop com esse mesmo nome'

sleep 3 
####################################################################################################
elif [ $sistema = "6" ]; then

	echo 'saindo'
sleep 1
exit
else
   echo 'Você tem de entrar com um parâmetro válido'
fi
