#! /bin/bash

clear
echo -e "\e[1;34m  ___      _       _          .--.\e[0m"
echo -e "\e[1;34m / _ \ ___(_)_ __ | |_       |o_o |\e[0m"
echo -e "\e[1;34m| | | / __| | '_ \| __|      |:_/ | \e[0m"
echo -e "\e[1;34m| |_| \__ \ | | | | |_      //   \ \ \e[0m"
echo -e "\e[1;34m \___/|___/_|_| |_|\__|    (|     | ) \e[0m"    
echo -e "\e[1;34m                          /^\_   _/^\ \e[0m"
echo -e "          \e[1;31mBy: MRX-HACKS\e[0m  \e[1;34m \___)=(___/ \e[0m"
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
echo -e "\e[1;37m[\e[0m\e[1;31m10\e[0m\e[1;37m]. Phishing wifi"
echo -e "\e[1;37m[\e[0m\e[1;31m99\e[0m\e[1;37m]. Salir\e[0m"
echo -e -n "\e[1;37m[+]\e[0m\e[1;31mOpcion >>\e[0m "
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
cd /data/data/com.termux/files/home/IP-OSINT/Phone-Py
echo ""
#! /bin/bash
python phone.py
exit
;;
6)
cd /data/data/com.termux/files/home/IP-OSINT/Escanear-port
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
cd /data/data/com.termux/files/home/IP-OSINT/SABER-IP-DE-UNA-PAGINA
#! /bin/bash
echo ""
python ip.py
exit
;;
9)
cd /data/data/com.termux/files/home/IP-OSINT/Escanear-port
#! /bin/bash
echo ""
python port1.py
exit
;;
10)
cd /data/data/com.termux/files/home/IP-OSINT/PhishW
echo ""
#! /bin/bash
cd PhishW
bash wifi.sh
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
