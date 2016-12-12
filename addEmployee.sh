#!/bin/sh

echo This program will add a new Employee to the employee.txt
echo "Enter SSN (xxxxxxx), First Name, Last Name, Starting Year, End Year, and Salary: "
echo
read val1 val2 val3 val4 val5 val6	
value=$( grep -ic $val1 employee.txt )

while [[ -z "$val2" ]] || [[ -z "$val3" ]] || [[ -z "$val4" ]] || [[ -z "$val5" ]] || [[ -z "$val6" ]]
do
echo "No empty value allowed! please Enter all information (SSN, Fisrt, Last, Start Year, Last Year, Salary)"
read val1 val2 val3 val4 val5 val6

done
	
while [[ $value -eq 1 ]]
do
echo "Duplicate SSN"
echo "Enter a new SSN#: "
read val1 
value=$( grep -ic $val1 employee.txt )
done
echo "$val1,$val2,$val3,$val4,$val5,$((val5-val4)),$val6">>employee.txt
