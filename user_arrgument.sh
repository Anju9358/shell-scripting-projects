#########################
# Author: Anju
# Date: 11/4/2025
# version: V1
# script that takes multiple arguments when executing and uses an if-else statement as well
### 

echo "Shree ki rank $1 hai"
sleep 2
echo "Anju ki rank $2 hai"
sleep 2
echo "chiki ki rank $3 hai"
sleep 2
echo "kiki ki rank $4 hai"

# 1st if-else block

if [ $1 -eq "1" ]; then #spcae must be there between if and [], else it will throw an syntex error
	echo "Shree is topper"
else
	echo "Shree Topper nahi hai"
fi

# 2nd if-elif-else

if [ $1 -eq "1" ]; then  #spcae must be there between if and [], else it will throw an syntex error
	echo "Shree is Topper"
elif [ $2 -eq "1" ]; then
	echo "Anju is topper"
elif [ $3 -eq "1" ]; then
	echo "chiki is topper"
elif [ $4 -eq "1" ]; then 
	echo "kiki is Topper"
else
	echo "No one is topper"
fi
