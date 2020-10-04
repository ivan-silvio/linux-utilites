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
##
#Requisitos#########################################################################
#
#
#
diretorio=`pwd`
yum install -y sshpass
zypper install -y sshpass
sudo apt-get install -y sshpass
#####################################################################################
#
#
for servers in `cat $diretorio/$servers` 
do

echo $servers 

timeout $time sshpass -p "$senha" ssh-copy-id -f -i ~/.ssh/id_rsa.pub $usuario@$servers


done
exit
