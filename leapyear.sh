#set -vx
clear
if [ $# -gt 1 ]
then
   echo "syntax is <$0> [<year>]"
   exit 1
fi
if [ $# -ne 1 ]
then 
   year=`date +%Y`
else
   year=$1
fi
d4=`expr $year % 4`
d100=`expr $year % 100`
d400=`expr $year % 400`
if [ $d4 -eq 0 -a $d100  -ne 0 -o $d400 -eq 0 ]
then
   echo "$year is a leap year"
else
   echo "$year is not a leap year"
fi
