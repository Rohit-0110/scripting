#!/usr/bin/bash

user = "$(cat db.csv)"

for j in $user
do
useradd $j
passwd $j
done

echo "$user user created..."
