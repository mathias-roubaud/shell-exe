IFS=","

while read id prenom nom mdp role
do
sudo userdel -r $prenom

done < <(tail -n +2 /home/mathias/Shell.exe/Job9/Shell_Userlist.csv)
