echo "Flip Coin Simulation
This problem displays the winner Heads or Tails"
headsWins=0
tailsWins=0
ifHeads=0
ifTails=1
counter=0
while [ $counter -lt 21 ]
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
echo "heads win count :- "$headsWins;
echo "tails wins counts :- "$tailsWins;
headsMargin=$(($headsWins-$tailsWins))
tailsMargin=$(($tailsWins-$headsWins))
if [ $headsWins -gt $tailsWins ]
then
	echo "Heads wins by margin of " $headsMargin
elif [ $tailsWins -gt $headsWins ]
then
	echo "Tails wins by margin of " $tailsMargin
elif [ $tailsWins -eq $headsWins ]
then
	echo "its a Tie !" $tailsMargin
fi
