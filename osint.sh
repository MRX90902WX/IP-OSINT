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
echo -e "\e[1;37m[\e[0m\e[1;31m3\e[0m\e[1;37m]. Ve tu informacion de tu IP Publica"
echo -e "\e[1;37m[\e[0m\e[1;31m4\e[0m\e[1;37m]. Hacer osint a una IP Publica"
echo -e "\e[1;37m[\e[0m\e[1;31m5\e[0m\e[1;37m]. Ver info de un numero de telefono"
echo -e "\e[1;37m[\e[0m\e[1;31m6\e[0m\e[1;37m]. Comprobar si el puerto 22 está abierto"
echo -e "\e[1;37m[\e[0m\e[1;31m7\e[0m\e[1;37m]. Mostrar la versión remota del servidor SSH"
echo -e "\e[1;37m[\e[0m\e[1;31m8\e[0m\e[1;37m]. Saber la IP de una pagina\e[0m"
echo -e "\e[1;37m[\e[0m\e[1;31m9\e[0m\e[1;37m]. Escanear puertos vulnerables de una IP"
echo -e "\e[1;37m[\e[0m\e[1;31m10\e[0m\e[1;37m]. Escanear vulnerabilidades de un dominio"
echo -e "\e[1;37m[\e[0m\e[1;31m11\e[0m\e[1;37m]. Mostrar datos del sistema unix\e[0m"
echo -e "\e[1;37m[\e[0m\e[1;31m12\e[0m\e[1;37m]. Phishing wifi"
echo -e "\e[1;37m[\e[0m\e[1;31m99\e[0m\e[1;37m]. Salir\e[0m"
echo ""
echo -e "\e[1;36mGithub:\e[0m \e[1;37mhttps://github.com/MRX90902WX/IP-OSINT\e[0m"
echo ""
echo -e -n "\e[1;37m☆ I \e[0m\e[1;31mP \e[0m\e[1;33m- \e[0m\e[1;37mO \e[0m\e[1;31mP \e[0m\e[1;37mS \e[0m\e[1;31mI \e[0m\e[1;37mN >> \e[0m"
read opcion
case $opcion in
1)
echo ""
#! /bin/bash
setterm -foreground green
echo "[+]Ingrese la IP de una pagina"
echo -n -e "[IP] >> \e[1;37m\e[0m"
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
echo "[+]Ingrese el dominio para recompilar información"
echo -n -e "[Ej:facebook.com] >> \e[1;37m\e[0m"
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
echo ""
#! /bin/bash
setterm -foreground green
echo "[+]Cargando info de tu IP Publica .."
sleep 2
echo ""
setterm -foreground yellow
curl "ipinfo.io/$ip?token=6013e923bd8fe3"
echo ""
bash main.sh
exit
;;
4)
echo ""
#! /bin/bash
setterm -foreground green 
echo "[+]Ingrese una IP Publica que desea obtener información"
echo -n -e "[OSINT] >> \e[1;37m\e[0m"
read c
echo ""
setterm -foreground green
echo "[+]Haciendo osint a IP Publica ($c) ..."
sleep 3
echo ""
echo "---------OSINT----------"
sleep 1
setterm -foreground yellow
whois $c
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
cd /data/data/com.termux/files/home/IP-OSINT/Modules-de-IP-OSINT
#! /bin/bash
echo ""
python port.py
exit
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
echo "ESTA SCRIPT ES PARA ENCONTRAR VULNERABILIDADES EN LA PAGINA DEL OBJETIVO"
sleep 1
echo ""
echo -e "\e[1;34m[+]Escriba el dominio de la pagina ej:(facebook.com)\e[0m"
echo -e -n "\e[1;32m >>\e[0m \e[1;37m\e[0m"
read url
echo ""
setterm -foreground cyan
echo "-----------------------------------------------"
echo "└─> nmap -Pn -script vuln" $url
echo "-----------------------------------------------"
echo ""
while :
do
setterm -foreground green
echo "[1]Desea guardar las vulnerabilidades en un archivo txt"
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

#Esta funcion hace que al ejecutarse nmap -Pn -script vuln $url busque la vulnerabilidad de la misma
setterm -foreground green
sleep 1
echo ""
nmap -Pn -script vuln $url > $archivo.txt
echo ""
bash main.sh
exit
;;
2)
echo ""
#! /bin/bash
echo -e "\e[1;37m[#]Buscando vulnerabilidades espere un momento...\e[0m"

#Esta funcion hace que al ejecutarse nmap -Pn -script vuln $url busque la vul>
setterm -foreground green
sleep 1
echo ""
nmap -Pn -script vuln $url
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
echo "[~] Un gusto que uses mi herramienta , bye."
sleep 1
exit
;;
esac
done
