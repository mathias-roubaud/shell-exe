IFS=","

while read id prenom nom mdp role
do
sudo useradd $prenom
sudo passwd $prenom << EOD
$mdp
$mdp
EOD
admin="Admin"
if [ $role = $admin ];then
sudo usermod -aG sudo $prenom
fi
sudo usermod -u $id $prenom
done < <(tail -n +2 /home/mathias/Shell.exe/Job9/Shell_Userlist.csv)
