#!/bin/bash

function read_dir(){
for file in `ls $1`
do
 if [ -d "$1/$file" ]
 then
  read_dir "$1/$file"
 else
  echo "$1/$file"
 fi
done
}

des="."
[ "$1" ] && des="$1"

#list=$(ls "$des")
list=$(read_dir "$des")

echo "$list" | while read line
do
  #echo "chmod +x $line"
  chmod +x $line
done

# chmod +x add-execable.sh
# add-execable.sh add-on
# ../bash-script-archive/ubuntu/add-execable.sh ../bash-script-archive/ubuntu
# ls -al ../bash-script-archive/ubuntu
# ../bash-script-archive/ubuntu/add-execable.sh add-on
