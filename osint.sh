#! /bin/bash

clear
echo -e "\e[1;34m  ___      _       _\e[0            \e[1;37m.--.\e[0m"
echo -e "\e[1;34m / _ \ ___(_)_ __ | |_\e[0m       \e[1;37m|\e[0m\e[1;32mo_o\e[0m \e[1;37m|\e[0m"
echo -e "\e[1;34m| | | / __| | '_ \| __|\e[0m      \e[1;37m|\e[0m\e[1;33m:_/\e[0m \e[1;37m| \e[0m"
echo -e "\e[1;34m| |_| \__ \ | | | | |_\e[0m      \e[1;37m//   \ \ \e[0m"
echo -e "\e[1;34m \___/|___/_|_| |_|\__|\e[0m    \e[1;37m(|     | )\e[0m"    
echo -e "                          \e[1;33m/^\_   _/^\ \e[0m"
echo -e "         \e[1;31mBy: MRX-HACKS\e[0m\e[1;33m    \___)=(___/ \e[0m"
echo ""
while :
do
echo -e "\e[1;37m[\e[0m\e[1;31m1\e[0m\e[1;37m]. Sacar informacion IP de una pagina\e[0m"
echo -e "\e[1;37m[\e[0m\e[1;31m2\e[0m\e[1;37m]. Hacer osint a una pagina\e[0m"
echo -e "\e[1;37m[\e[0m\e[1;31m3\e[0m\e[1;37m]. Generador de bin\e[0m"
echo -e "\e[1;37m[\e[0m\e[1;31m4\e[0m\e[1;37m]. Ver los servicios que se están corriendo\e[0m"
echo -e "\e[1;37m[\e[0m\e[1;31m5\e[0m\e[1;37m]. Ver info de un numero de telefono\e[0m"
echo -e "\e[1;37m[\e[0m\e[1;31m6\e[0m\e[1;37m]. Leer archivo.txt del directorio IP-OSINT"
echo -e "\e[1;37m[\e[0m\e[1;31m7\e[0m\e[1;37m]. Mostrar la versión remota del servidor SSH\e[0m"
echo -e "\e[1;37m[\e[0m\e[1;31m8\e[0m\e[1;37m]. Saber la IP de una pagina\e[0m"
echo -e "\e[1;37m[\e[0m\e[1;31m9\e[0m\e[1;37m]. Escanear 24 puertos de una IP\e[0m"
echo -e "\e[1;37m[\e[0m\e[1;31m10\e[0m\e[1;37m]. Escanear vulnerabilidades de una IP\e[0m"
echo -e "\e[1;37m[\e[0m\e[1;31m11\e[0m\e[1;37m]. Mostrar datos del sistema\e[0m"
echo -e "\e[1;37m[\e[0m\e[1;31m12\e[0m\e[1;37m]. Phishing wifi\e[0m"
echo -e "\e[1;37m[\e[0m\e[1;31m99\e[0m\e[1;37m]. Salir\e[0m"
echo ""
echo -e "\e[1;36mFacebook:\e[0m \e[1;37mhttps://www.facebook.com/jimber.cevallos\e[0m"
echo ""
echo -e -n "\e[1;37m☆ I \e[0m\e[1;31mP \e[0m\e[1;33m- \e[0m\e[1;37mO \e[0m\e[1;31mP \e[0m\e[1;37mS \e[0m\e[1;31mI \e[0m\e[1;37mN >> \e[0m"
read opcion
case $opcion in
1)
echo ""
#! /bin/bash
setterm -foreground green
echo -e -n "\e[1;32m[+]Ingrese la IP de una pagina >\e[0m \e[1;37m\e[0m"
read a
echo ""
setterm -foreground green
echo "[+]Buscando datos de la IP .."
sleep 3
echo ""
echo "---------Informacion----------"
sleep 1
setterm -foreground yellow
whois $a
echo ""
bash main.sh
exit
;;
2)
echo ""
#! /bin/bash
setterm -foreground green
echo -e "\e[1;32m[+]Ingrese el dominio de la pagina\e[0m"
echo -n -e "\e[1;32m[Ej:facebook.com] >>\e[0m \e[1;37m\e[0m"
read b
echo ""
setterm -foreground green
echo "[+]Haciendo osint a ($b) ..."
sleep 3
echo ""
echo "---------OSINT----------"
sleep 1
setterm -foreground yellow
whois $b
echo ""
bash main.sh
exit
;;
3)
cd /data/data/com.termux/files/home/IP-OSINT/Modules-de-IP-OSINT
echo ""
#! /bin/bash
while :
do 
echo -e -n " \e[1;32m1)\e[0m\e[1;37mGenerar bin Rnd\e[0m      \e[1;32m2)\e[1;37mGenerar bin con fecha Rnd\e[0m"
echo ""
echo ""
echo -n -e " \e[1;32mOpción: "
read bin
case $bin in
1)
#! /bin/bash
python Hack4lx.py
echo ""
bash main.sh
exit
;;
2)
#! /bin/bas
python Hack4lxMesA.py
echo ""
bash main.sh
exit
;;
esac
done
exit
;;
4)
echo ""
#! /bin/bash
echo -n -e "\e[1;32m[+]Ingrese la IP de un dominio >\e[0m \e[1;37m\e[0m"
read c
echo ""
echo -e "\e[1;32m[+]Escaneando posibles servicios abiertos de ($c)..\e[0m"
sleep 2
echo ""
echo "==============================================================="
nmap -sV -sC $c
echo ""
bash main.sh
exit
;;
5)
cd /data/data/com.termux/files/home/IP-OSINT/Modules-de-IP-OSINT
echo ""
#! /bin/bash
python phone.py
exit
;;
6)
echo ""
ls
echo ""
while :
do
echo -e -n "\e[1;37m[~]Desea continuar [\e[0m\e[1;33myes\e[0m\e[1;37m]\e[0m \e[1;37msalir\e[0m \e[1;37m[\e[0m\e[1;33mno\e[0m\e[1;37m] > \e[0m"
read continued
case $continued in
yes)
#! /bin/bash
echo ""
echo -e "\e[1;32m[+]Escriba el archivo sin el\e[0m \e[1;31m.txt\e[0m"
echo -n -e "\e[1;32mArchivo >>\e[0m \e[1;37m\e[0m"
read a
cat $a.txt
echo ""
bash main.sh
exit
;;
no)
#! /bin/bash
exit
;;
esac
done
;;
7)
#! /bin/bash
echo ""
setterm -foreground red
echo "
 2222222   2222222    H     H
22        22          H     H
22        22          H     H
  22222     22222     HdddddH
      22        22    H     H
      22        22    H     H
2222222   2222222     H     H
"
echo ""
setterm -foreground green
echo "[+]Ingrese una IP que tenga abierto el puerto 22"
echo -n -e "[IP] >> \e[1;37m\e[0m"
read a
echo ""
echo -e "\e[1;36mVERSIÓN SSH DEL SERVIDOR\e[0m"
exec 3</dev/tcp/$a/22
timeout 1 cat <&3
echo ""
bash main.sh
exit
;;
8)
cd /data/data/com.termux/files/home/IP-OSINT/Modules-de-IP-OSINT
#! /bin/bash
echo ""
python ip.py
exit
;;
9)
cd /data/data/com.termux/files/home/IP-OSINT/Modules-de-IP-OSINT
#! /bin/bash
echo ""
python port1.py
exit
;;
10)
#! /bin/bash
echo ""
setterm -foreground cyan
figlet -f small NmapV
setterm -foreground green
sleep 1
setterm -foreground red
echo "                    v.1.9"
echo ""
setterm -foreground green
echo "SCRIPT PARA ENCONTRAR VULNERABILIDADES EN LA PAGINA DEL OBJETIVO"
sleep 1
echo ""
echo -e -n "\e[1;34m[+]Escriba la IP Objetivo >>\e[0m \e[1;32m\e[0m"
read url
echo ""
setterm -foreground cyan
echo "-----------------------------------------------"
echo "└─> nmap -sV -sC --script vuln $url"
echo "-----------------------------------------------"
echo ""
while :
do
setterm -foreground green
echo "[1]Guardar las vulnerabilidades en un archivo txt"
echo "[2]No guardar"
echo -n "[~]Opcion >> "
read opcion
case $opcion in
1)
echo ""
#! /bin/bash
echo -e -n "\e[1;31m[~]Nombre del archivo txt ej:(scan)>> \e[0m"
read archivo
echo ""
echo -e "\e[1;37m[#]Guardando vulnerabilidades espere un momento...\e[0m"

#Esta funcion hace que al ejecutarse nmap -sV -sC --script vuln $url busque la vulnerabilidad de la IP
setterm -foreground green
sleep 1
echo ""
nmap -sV -sC --script vuln $url > $archivo.txt
echo ""
bash main.sh
exit
;;
2)
echo ""
#! /bin/bash
echo -e "\e[1;37m[#]Buscando vulnerabilidades espere un momento...\e[0m"

#Esta funcion hace que al ejecutarse nmap -sC -sV --script vuln $url busque la vulerabilidad de la IP
sleep 1
echo ""
echo "==============================================================="
nmap -sV -sC --script vuln $url
echo ""
bash main.sh
exit
;;
esac
done
;;
11)
cd /data/data/com.termux/files/home/IP-OSINT/Modules-de-IP-OSINT
#! /bin/bash
echo ""
python system.py
exit
;;
12)
cd /data/data/com.termux/files/home/IP-OSINT/PhishW
echo ""
#! /bin/bash
bash wifi.sh
cd /data/data/com.termux/files/home/IP-OSINT
echo ""
bash main.sh
exit
;;
99)
#! /bin/bash
setterm -foreground yellow
echo ""
echo -e "\e[1;31m[~]\e[0m \e[1;33mUn gusto que uses mi herramienta , bye.\e[0m"
sleep 1
exit
;;
esac
done
