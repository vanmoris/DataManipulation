#! /bin/sh

chmod +x read.sh
chmod +x addEmployee.sh
chmod +x updateEmployee.sh
chmod +x deleteEmployee.sh
chmod +x save.sh

gcc -o userName userName.c
./userName

echo /*--- Program by Ahmed M. Diallo CS265 --*/
echo /*-- Using the text file: employee.txt --*/
echo
echo Thise Program will help you update Employees back-up File.

CHOICE=10
until [ $CHOICE -eq 5 ]
do
clear
echo please make a choice:
echo
echo "1) Display Employee Data text file"
echo "2) Add a new Employee Data"
echo "3) Update Employee Salary"
echo "4) Delete Employee"
echo ==================================================
echo "5) Exit the program"
echo
read CHOICE
case $CHOICE in
1) ./read.sh;;
2) ./addEmployee.sh;;
3) ./updateEmployee.sh;;
4) ./delete.sh;;
5)echo "Thank you for using this program. Bye!!!";;
*)echo Invalid Section!! Your choice are between 1 and 5:
esac
echo "Press Enter to continue!"
read Enter
done
