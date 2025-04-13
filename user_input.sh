#!/bin/bash
####################################
## Author: Anju
## Date: 11/4/2025
## version: V1
## we will write a shell script that uses variables and takes user input (using the prompt -p option)
####################################
height=5.5 #variable

echo "Shree: hey Anju, what's your height?" #print this sentence
sleep 2 # 2 second break

echo "Anju: Hahaha! My height is $height."
sleep 2

echo "Anju: By the way, what was your rank in the UPSC exam?"
sleep 2

read -p "Please enter the Rank: " Rank #with this command we will take input from user
echo "Shree: I secured the $Rank rank!"
sleep 2




