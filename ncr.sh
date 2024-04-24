# ncr

if [ $# -ne 0 ]
then 
   echo "Syntax is <$0>"
   exit 1
fi 
# function to find Factorial

fact()
{
x=$1
i=1
f=1
while [ $i -le $x ]
do
 f=`expr $f \* $i`
 i=`expr $i + 1`
done
return $f
}
# calling function
echo -n "Enter value for n : "
read n
echo -n "Enter value for r : "
read r
fact $n
factn=$?;echo $factn
fact $r
factr=$?;echo $factr
nmr=`expr $n - $r`
fact $nmr
factnmr=$?; echo $factnmr
rnmr=`expr $factr \* $factnmr`
ncr=`expr $factn / $rnmr`
echo "$n C $r = $ncr "

