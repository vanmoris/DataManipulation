#!/bin/bash
#/usr/bin/sed -f
#Delete program

read val1
employee=employee.txt
backupfile=$employee.beforedelete."$(date +%Y%m%d-%H%M%S)"
cp $employee $backupfile

sed -e "/${val1}/d" ${backupfile} > $employee
