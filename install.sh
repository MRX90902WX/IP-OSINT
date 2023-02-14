#! /bin/bash

white="\033[1;37m"                                                                                                    
green="\033[1;32m"
blue="\033[1;34m"

echo -e "\e[1;34m------Verificando requisitos------\e[0m"
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

#directory verification
directory=$(pwd)


if which nmap >/dev/null; then
sleep 1
echo ""
echo -e "$blue(nmap) ................................................... Instalado [✓]"
else
sleep 1
echo -e "(nmap) No instalado [✗]"
sleep 1
echo -e "\e[1;32mInstalando nmap ...\e[0m"
sleep 3
pkg install nmap -y
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

pkg uninstall openssh -y
pkg uninstall dropbear -y
pkg install openssh -y
pkg install dropbear -y
echo ""
setterm -foreground blue
echo -e "\e[1;34m------Instalando importaciones------\e[0m"
echo ""
pip install -r requirements.txt
clear

setterm -foreground blue
echo -e "\e[1;34m------Clonando repositorios------\e[0m"
sleep 1
echo ""
git clone https://github.com/MRX90902WX/Modules-de-IP-OSINT
git clone https://github.com/MRX90902WX/PhishW
echo ""
chmod 777 osint.sh
bash osint.sh




