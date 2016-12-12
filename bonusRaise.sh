INPUT=employee.txt
OLDIFS=$IFS
IFS=","
NEWSALARY=0
BONUS=0.05
RAISE=0.03
backupfile=$INPUT.beforebonus."$(date +%Y%m%d-%H%M%S)"
cp $INPUT $backupfile

[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }
while read ssn firstname lastname startyear endyear nbyears salary
do
	echo "ssn: $ssn"
	echo "firstname: $firstname"
	echo "lastname: $lastname"
        echo "salary: $salary"
	NEWS=0
	# check if nbyears is a int and if it is > 2
	if [ -z "${nbyears##[0-9]*}" ] && [ $nbyears -gt 2 ]; then
		bonus=$(expr $salary*$BONUS | bc)
		newsalary=$(expr $salary+$bonus | bc)
		sed -i "s/^$ssn.*/$ssn\,$firstname\,$lastname\,$startyear\,$endyear\,$nbyears\,$newsalary/" $INPUT
		echo -e "\n"
	fi	
	echo -e "new salary is: $newsalary \n"
done < $INPUT
IFS=$OLDIFS
