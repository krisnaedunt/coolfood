#!/bin/bash
#Dont Change CopyRight Cok
#KrisnaEdunt

red='\e[1;31m'
green='\e[1;32m'
yellow='\e[1;33m'
blue='\e[1;34m'
magenta='\e[1;35m'
cyan='\e[1;36m'
white='\e[1;37m'

echo -e "\e[1;35m-------------------------------------------------";
echo -e "\e[1;32m            GOJEK VERSION AFTURE              ";
echo -e "\e[1;35m-------------------------------------------------";
echo -e "\e[1;33m         Semoga Harimu Menyenangkan        ";
echo -e "\e[1;35m-------------------------------------------------";
echo -e "\e[1;36m              Tools Installer            ";
echo -e "\e[1;35m-------------------------------------------------";
echo -e "\e[1;37m         Jangan Otak Atik Script Cok            ";
echo -e "\e[1;35m-------------------------------------------------\n\e[1;37m";

#menu
echo -e "\e[1;34m[\e[1;36m1\e[1;34m]\e[1;31m : Install Alat Tempur";
echo -e "\e[1;34m[\e[1;36m2\e[1;34m]\e[1;31m : Tkp Jakarta";
echo -e "\e[1;34m[\e[1;36m3\e[1;34m]\e[1;31m :\e[1;37m All Tkp";
read -p $'Pilih : \e[1;33m' opt
case $opt in
	1) #menu1
		clear
		echo -e "${green}Installing Alat Tempur"
		sleep 1
		clear
		pkg update && pkg upgrade -y
		pkg install php curl -y
		bash install.sh
	;;
	2) #menu2
		clear
		echo -e "\e[1;35m-------------------------------------------------";
		echo -e "\e[1;32m               FORMAT 08***              ";
		echo -e "\e[1;35m-------------------------------------------------";
		echo -e "\e[1;33m         Semoga Harimu Menyenangkan        ";
		echo -e "\e[1;35m-------------------------------------------------";
		echo -e "\e[1;34m                TKP JAKARTA            ";
		echo -e "\e[1;35m-------------------------------------------------";
		echo -e "\e[1;37m         Jangan Otak Atik Script Cok            ";
		echo -e "\e[1;35m-------------------------------------------------\n\e[1;37m";
		php lib/jakarta.php
	;;
	3) #menu3
		clear
		echo -e "\e[1;35m-------------------------------------------------";
		echo -e "\e[1;32m               FORMAT 08***              ";
		echo -e "\e[1;35m-------------------------------------------------";
		echo -e "\e[1;33m         Semoga Harimu Menyenangkan        ";
		echo -e "\e[1;35m-------------------------------------------------";
		echo -e "\e[1;34m               TKP TERSERAH            ";
		echo -e "\e[1;35m-------------------------------------------------";
		echo -e "\e[1;37m         Jangan Otak Atik Script Cok            ";
		echo -e "\e[1;35m-------------------------------------------------\n\e[1;37m";
		php lib/all.php
	;;
	*) #salah
		echo -e "${yellow}Masukin Yang Benar Lah Cok :("
		sleep 2
		clear
		bash install.sh
	;;
esac