#
read -p "usuario para o copy-id: " usuario
#
#
read -p "senha para o copy id: " senha
#
#
#
read -p "caminho do arquivo com a lista de ips dos servidores: " servers
#
#
#
yum install -y sshpass
zypper install -y sshpass
sudo apt-get install -y sshpass
#
#
for servers in `cat $servers` 
do

echo $servers 

timeout 0.5 sshpass -p "$senha" ssh-copy-id -f -i ~/.ssh/id_rsa.pub $usuario@$servers


done
exit
