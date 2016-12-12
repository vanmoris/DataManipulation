#!/bin/sh
chmod +x final.sh
CHOICE=10
until [ $CHOICE -eq 3 ]
do
clear
echo Please make a choice: 
echo
echo "1) Add Bonus and Raise"
echo "2) Main Program"
echo ======================
echo "3) Exit"
echo
read CHOICE
case $CHOICE in
1) ./bonusRaise.sh;;
2) ./final.sh;;
3) echo "Bye!" 
break
exit 2
;;
*) echo Invalid Choice;;
esac
done
