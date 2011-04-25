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
####################################################################
elif [ $sistema = "1" ]; then
	echo 'instalando no ubuntu 11'

sudo apt-get install git-core build-essential intltool libtool libgtkglext1-dev libgtkmm-2.4-dev cmake 

clear
echo 'agora vamos baixar a biblioteca de comunicação entre a impressora e o computador.'

cd /home/ 

sudo git clone git://github.com/Ralith/libreprap.git

cd /home/libreprap/

cmake CMakeCache.txt

make && sudo make install 

echo 'baixando a ultima versão do programa...'

sudo git clone git://github.com/timschmidt/repsnapper

cd /home/repsnapper/

./autogen.sh
make

cd /home/repsnapper/src/

make install

cd /home/

echo 'adquirindo configurações especificas'

sudo git clone git@github.com:danielprint/3dprint.git

rm ~/.conf/repsnapper/repsnapper.conf

cp /home/3dprint/repsnapper.conf ~/.conf/repsnapper/

rm /usr/local/etc/xdg/repsnapper/repsnapper.conf

cp /home/3dprint/repsnapper.conf /usr/local/etc/xdg/repsnapper

echo 'tudo esta feito agora para rodar o programa digite repsnapper
ou crie um lançador no seu desktop com esse mesmo nome'
# alterar configuração em usr/local/etc/xdg/repsnapper
# home/$user/.conf/repsnapper/
# depois criar icone no desktop

##################################################################################

elif [ $sistema = "2" ]; then
	echo 'instalando no ubuntu 10.10'

sudo apt-get install git-core build-essential automake intltool libtool libgtkmm-2.4-dev libgtkglext1-dev libglut3-dev cmake
clear
echo 'agora vamos baixar a biblioteca de comunicação entre a impressora e o computador.'
cd /home/
sudo git clone git://github.com/Ralith/libreprap.git
cd /home/libreprap/
cmake CMakeCache.txt
make && sudo make install 

echo 'baixando a ultima versão do programa...'
sudo git clone git://github.com/timschmidt/repsnapper
cd /home/repsnapper/
./autogen.sh
make
cd /home/repsnapper/src/
make install

cd /home/
echo 'adquirindo configurações especificas'
sudo git clone git@github.com:danielprint/3dprint.git
rm ~/.conf/repsnapper/repsnapper.conf

cp /home/3dprint/repsnapper.conf ~/.conf/repsnapper/

rm /usr/local/etc/xdg/repsnapper/repsnapper.conf

cp /home/3dprint/repsnapper.conf /usr/local/etc/xdg/repsnapper

echo 'tudo esta feito agora para rodar o programa digite repsnapper
ou crie um lançador no seu desktop com esse mesmo nome'
#####################################################################################

elif [ $sistema = "3"  ]; then
	echo 'instalando no ubuntu 10.04'

sudo apt-get install git-core build-essential TODO cmake
clear
echo 'agora vamos baixar a biblioteca de comunicação entre a impressora e o computador.'
cd /home/
sudo git clone git://github.com/Ralith/libreprap.git
cd /home/libreprap/
cmake CMakeCache.txt
make && sudo make install 

echo 'baixando a ultima versão do programa...'
sudo git clone git://github.com/timschmidt/repsnapper
cd /home/repsnapper/
./autogen.sh
make
cd /home/repsnapper/src/
make install

cd /home/
echo 'adquirindo configurações especificas'
sudo git clone git@github.com:danielprint/3dprint.git
rm ~/.conf/repsnapper/repsnapper.conf

cp /home/3dprint/repsnapper.conf ~/.conf/repsnapper/

rm /usr/local/etc/xdg/repsnapper/repsnapper.conf

cp /home/3dprint/repsnapper.conf /usr/local/etc/xdg/repsnapper

echo 'tudo esta feito agora para rodar o programa digite repsnapper
ou crie um lançador no seu desktop com esse mesmo nome'
##############################################################################
elif [ $sistema = "4" ]; then
	echo 'instalando no fedora 14'
su
yum install git gtk2-devel gcc-c++ gcc binutils make TODO cmake

clear
echo 'agora vamos baixar a biblioteca de comunicação entre a impressora e o computador.'
su
cd /home/
git clone git://github.com/Ralith/libreprap.git
cd /home/libreprap/
cmake CMakeCache.txt
make && sudo make install 

echo 'baixando a ultima versão do programa...'
sudo git clone git://github.com/timschmidt/repsnapper
cd /home/repsnapper/
./autogen.sh
make
cd /home/repsnapper/src/
make install

cd /home/
echo 'adquirindo configurações especificas'
sudo git clone git@github.com:danielprint/3dprint.git

rm ~/.conf/repsnapper/repsnapper.conf

cp /home/3dprint/repsnapper.conf ~/.conf/repsnapper/

rm /usr/local/etc/xdg/repsnapper/repsnapper.conf

cp /home/3dprint/repsnapper.conf /usr/local/etc/xdg/repsnapper

echo 'tudo esta feito agora para rodar o programa digite repsnapper
ou crie um lançador no seu desktop com esse mesmo nome'

############################################################################
elif [ $sistema = "5" ]; then
	echo 'instalando no OpenSuse 11.2 / SLED 11 SP1'
sudo zypper install TODO cmake
clear
echo 'agora vamos baixar a biblioteca de comunicação entre a impressora e o computador.'
cd /home/
sudo git clone git://github.com/Ralith/libreprap.git
cd /home/libreprap/
cmake CMakeCache.txt
make && sudo make install 

echo 'baixando a ultima versão do programa...'
sudo git clone git://github.com/timschmidt/repsnapper
cd /home/repsnapper/
./autogen.sh
make
cd /home/repsnapper/src/
make install

cd /home/
echo 'adquirindo configurações especificas'
sudo git clone git@github.com:danielprint/3dprint.git
rm ~/.conf/repsnapper/repsnapper.conf

cp /home/3dprint/repsnapper.conf ~/.conf/repsnapper/

rm /usr/local/etc/xdg/repsnapper/repsnapper.conf

cp /home/3dprint/repsnapper.conf /usr/local/etc/xdg/repsnapper

echo 'tudo esta feito agora para rodar o programa digite repsnapper
ou crie um lançador no seu desktop com esse mesmo nome'
####################################################################################
elif [ $sistema = "6" ]; then
	echo 'saindo'
sleep 1
exit
else
   echo 'Você tem de entrar com um parâmetro válido'
fi


