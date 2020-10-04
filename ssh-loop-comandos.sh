#
read -p "usuario para o copy-id: " usuario
#
#
read -p "senha para o copy id: " senha
#
#
#
read -p "o nome arquivo com a lista de ips dos servidores: " servers
#
#
#
read -p "tempo em segundos de timeout para cada host(dependendo da rede pode ser necessario aumentar): " time
#
#
#
read -p "comando/s para executar nos servidores: " comando
##
#Requisitos#########################################################################
#
#
#
diretorio=`pwd`
sudo apt-get install -y sshpass
yum install -y sshpass
zypper install -y sshpass
yum install -y wget
zypper install -y wget
#####################################################################################
#
#
for servers in `cat $diretorio/$servers` 
do

echo $servers 

timeout $time  sshpass -p "$senha" ssh -f -o LocalCommand=yes $usuario@$servers $comando

done
exit
