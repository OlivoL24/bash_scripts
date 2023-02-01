#!/bin/bash

# echo "What is your name?"

# read name

name="$1"
compliment="$2"

user=$(whoami)
date=$(date)
pwd=$(pwd)

echo "Good Morning $name!!"
sleep 1
echo "You're looking good today $name!!"
sleep 1
echo "You have the best $compliment i've ever seen $name!!"
sleep 2

echo "You are currently logged in as $user and you are in the $pwd directory. Today's Date is $date"