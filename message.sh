
if  [ $# -gt 0 ]
then
echo "Syntax is $0"
exit 1
fi
if [ $# -eq 0 ]
then
h=$(date +"%H")
u=$(whoami)
if [ $h -ge 6 -a $h -lt 12 ]
then
echo "Hello Good Morning $u"
elif [ $h -ge 12 -a $h -lt 16 ]
then 
echo "Helo Good Afternoon $u"
elif [ $h -ge 16 -a $h -lt 20 ]
then
echo "Hello Good Evening $u"
else
echo "Hello Good Night $u"
fi
fi
