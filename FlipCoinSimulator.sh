echo "Flip Coin Simulation
This problem displays the winner Heads or Tails"
headsWins=0
tailsWins=0
ifHeads=0
ifTails=1
counter=0
read -p "Enter number of time you want to flip a coin :- " limit
while [ $counter -lt $limit ]
do
	check=$((RANDOM%2))
	counter=$(($counter+1))
	if [ $check -eq $ifHeads ]
	then
		headsWins=$(($headsWins+1))
	elif [ $check -eq $ifTails ]
	then
		tailsWins=$(($tailsWins+1))
	fi
done
echo "Heads wins $headsWins Times"
echo "Tails wins $tailsWins Times"

