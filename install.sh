#! /bin/bash

white="\033[1;37m"                                                                                                    
green="\033[1;32m"
blue="\033[1;34m"

echo -e "\e[1;34m------Verificando requisito------\e[0m"
echo ""

#directory verification
directory=$(pwd)


if which whois >/dev/null; then
sleep 1
echo ""
echo -e "$blue(whois) ................................................... Instalado [✓]"
else
sleep 1
echo -e "(whois) No instalado [✗]"
sleep 1
echo -e "\e[1;32mInstalando whois ...\e[0m"
sleep 3
pkg install whois -y
fi


directory=$(pwd)


if which python >/dev/null; then
sleep 1
echo ""
echo -e "$blue(python) ................................................... Instalado [✓]"
else
sleep 1
echo -e "(python) No instalado [✗]"
sleep 1
echo -e "\e[1;32mInstalando python ...\e[0m"
sleep 3
pkg install python -y
fi

pkg install openssh -y
pkg install dropbear
echo ""
setterm-foreground blue
echo -e "\e[1;34m------Instalando importaciones------\e[0m"
echo ""
pip install -r requirements.txt
clear

setterm -foreground blue
echo -e "\e[1;34m------Clonando repositorios------\e[0m"
sleep 1
echo ""
git clone https://github.com/MRX90902WX/PhishW


