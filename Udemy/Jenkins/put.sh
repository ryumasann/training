#!/bin/bash

#nl people.txt | grep -w 2 | awk '{print $2}' | awk -F ',' '{print $2}'
#nl で行番号を付与、-wは完全一致、ｰFはdelimiterを指定

#shuf -i 0-30 -n 1
counter=0

while [ $counter -lt 50 ]; do
    let counter=counter+1

    name=$(nl people.txt | grep -w $counter | awk '{print $2}' | awk -F ',' '{print $1}')
    lastname=$(nl people.txt | grep -w $counter | awk '{print $2}' | awk -F ',' '{print $2}')
    age=$(shuf -i 20-25 -n 1)

    mysql -u root -p1234 people -e "insert into register values ($counter, '$name', '$lastname', $age)"
    echo "$counter, $name $lastname, $age was correctly imported"
done