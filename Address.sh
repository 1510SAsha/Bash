#!/bin/bash
ch=0
while [[ ch -ne 5 ]]
do
echo "1.Insert Record"
echo "2.View Address Book"
echo "3.Modify Record"
echo "4.Delete Record"
echo "5.Exit"

echo "Enter Choice:"
read ch

case $ch in
1)
echo "Enter Name:"
read name

echo "Enter Age:"
read age
echo "$name $age" cat>>address_op
;;

2)
cat address_op
;;

3)
echo "Enter Old content to modify:"
read rec1

echo "Enter new content:"
read rec2
sed -i "s/$rec1/$rec2/" address_op
;;

4)
echo "Enter what to delete:"
read rec

sed -i "/$rec/d" address_op
;; 

5)
echo "Exit"
;;

esac
done
