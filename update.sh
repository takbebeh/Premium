#!/bin/bash
LocalVersion=$(cat /root/version)
Version=$(curl -sS https://raw.githubusercontent.com/takbebeh/Premium/main/update/scriptversion | awk '{print $1}')
if [ $LocalVersion = $Version ]; then
echo -e "\e[32mScript Sudah Versi Terbaru...\e[0m"
read -n 1 -s -r -p "Press any key to Continue"
clear
menu
else
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "                  ⚡ UPDATE SCRIPT PREMIUM ⚡       "
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
read -n 1 -s -r -p "   Press any key to Continue"
echo -e "  [\e[32mINFO\e[0m ]  VPS sedang melakukan update script"
wget -q -O updateok.sh "https://raw.githubusercontent.com/takbebeh/premium/main/senmenu.sh" && chmod +x updateok.sh && ./updateok.sh
rm -f updateok.sh
rm -f /root/version
echo "$Version" > /root/version
echo -e "  [\e[32mINFO\e[0m ]  Update script telah selesai"
read -n 1 -s -r -p "   Press any key to Continue"
clear
menu
fi
