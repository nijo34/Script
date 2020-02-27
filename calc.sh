 #!/bin/bash
echo "Calculator"
sum=0
i="y"
while [ $i = "y" ]
do
echo "Enter the first number:"
read n1
echo "Enter the second number"
read n2
echo "1.Addition"
echo "2.Subtraction"
echo "3.Multiplication"
echo "4.Division"
echo "Enter choice"
read ch
case $ch in
1)res=$(echo $n1 + $n2)
echo "Added result is: $res";;
2)res=$(echo $n1 -$n2 | bc -l)
echo "Subtracted result is: $res";;
3)res=$(echo "$n1 * $n2" | bc -l )
echo "Product is :$res";;
4) res=$(echo $n1 /$n2 | bc -l)
echo "Divided result is: $res";;
*) echo "invalid Choice"
esac
echo "Do you want to continue?"
read i
if [ $i != "y" ]
then
exit

fi
done
