texte=$1
h="hello"
b="bye"

if [ $texte = $h ]
then
	echo 'Bonjour, je suis un script !'
fi
if [ $texte = $b ]
then
	echo 'Au revoir et bonne journée'
fi
