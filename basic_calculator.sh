#!/bin/bash

# calculator ..
echo "Welcome to calculator!!!"
echo "------------------------------"
echo "a for additon of numbers"
echo "b for subtraction of numbers"
echo "c for multiplication of numbers"
echo "d for division of numbers"
echo "------------------------------"
echo "what do you want to calculate??"
read -p "enter your option: " choice

case $choice in 
	a)addition() {

	 num1=$1
	 num2=$2
	 let sum=$num1+$num2
	 echo "$num1 + $num2= $sum"
 }
 read -p "enter first number:" num1
 read -p "enter second number:" num2

 addition $num1 $num2 ;;
     
          b)subtraction() {

         num1=$1
         num2=$2
         let sub=$num1-$num2
         echo "$num1 - $num2= $sub"
 }
 read -p "enter first number:" num1
 read -p "enter second number:" num2

 subtraction $num1 $num2;;

  c)multiplication() {
                
         num1=$1
         num2=$2
         let mul=$num1*$num2
         echo " $num1 x $num2 = $mul"
 }
 read -p "enter first number:" num1
 read -p "enter second number:" num2

 multiplication $num1 $num2 ;;

d)division() {
                
         num1=$1
         num2=$2
         let div=$num1/$num2
         echo "$num1 / $num2= $div"
 }
 read -p "enter first number:" num1
 read -p "enter second number:" num2

 division $num1 $num2;;

esac


 























