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

#directory verification
directory=$(pwd)


if which php >/dev/null; then
sleep 1
echo ""
echo -e "$blue(php) ................................................... Instalado [✓]"
else
sleep 1
echo -e "(php) No instalado [✗]"
sleep 1
echo -e "\e[1;32mInstalando php ...\e[0m"
sleep 3
pkg install php -y
fi

#directory verification
directory=$(pwd)


if which figlet >/dev/null; then
sleep 1
echo ""
echo -e "$blue(figlet) ................................................... Instalado [✓]"
else
sleep 1
echo -e "(figlet) No instalado [✗]"
sleep 1
echo -e "\e[1;32mInstalando figlet ...\e[0m"
sleep 3
pkg install figlet -y
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

pip install -r requirements.txt
echo ""
echo -e "\e[1;34mEjecuta :\e[0m \e[1;32mbash osint.sh\e[0m"
