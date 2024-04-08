#script to check if the given sides can be the sides of a trianle 
if [ $# -gt 1 ]
then
echo "syntax is <$0><sides>"
exit 1
fi
if [ $# -eq 0 ]
then
echo "Enter first side:"
read x
echo "Enter second side:"
read y
echo "Enter third side:"
read z
fi

if [ `expr $x + $y` -le $z -o `expr $y + $z` -le  $x -o `expr $x + $z` -le $y ]
then
echo " $x $y AND $z ARE NOT SIDES OF TRIANGLE"
exit 2
else
echo "THEY ARE SIDES OF TRIANGLE"
fi

if [ $x -eq $y -a $y -eq $z ]
then
echo "EQUILATERAL TRIANGLE"
elif [  $x -eq $y -o $y -eq $z -o $z -eq $x ]
then
echo "ISOCELESS TRIANGLE"
else
x2=`expr $x \* $x`
y2=`expr $y \* $y`
z2=`expr $z \* $z`
if [ `expr $x2 + $y2` -eq $z2 ]
then
echo "RIGHT ANGLED TRIANGLE"
else
echo "SCALANE TRIANGLE"
fi
fi
