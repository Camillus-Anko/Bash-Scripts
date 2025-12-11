#! /usr/bin/env bash

echo -e "username: "

read username

if 
  id -u $username > -1
then
  echo "That username already exists"
else
  echo -e "Full Name: "
  read fullname
  echo -e "Password: "
  read -s password
  sudo useradd -c "$fullname" $username -p $password
  if
    id -u $username > -1
  then
    echo "User Created Successfully"
  else
    echo "An error occured while creating the user"
  fi
fi

