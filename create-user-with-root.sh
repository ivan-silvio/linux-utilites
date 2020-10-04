read -p "usuario para criar: " usuario
#"
#
#
read -p "senha para adicionar (funcao pode nao ser com sucesso) : " senha
#
#usuario=$1
#senha =$2
#
#
echo "Criando grupo $usuario"
groupadd -f $usuario
RESULT=$?
#
if [ $RESULT = "0" ]
then
 echo "FUNCIONOU"
else
 if [ $RESULT = "9" ]
 then
  echo "Grupo $usuario ja existe"
 else
  echo "NAO FUNCIONOU"
 fi
fi
#
#read a
#
echo "Criando usuario $usuario"
useradd $usuario -m -d /home/$usuario -g $usuario
RESULT=$?
#
if [ $RESULT = "0" ]
then
 echo "FUNCIONOU"
else
 if [ $RESULT = "9" ]
 then
  echo "Usuario $usuario ja existe"
 else
  echo "NAO FUNCIONOU"
 fi
fi
#
#read a
######################
#
grep "$usuario" /etc/sudoers
if [ $? = "1" ]
then
    echo "Adicionando linha em branco ao arquivo /etc/sudoers"
    echo >> /etc/sudoers
  #
    echo "Adicionando linha ao arquivo /etc/sudoers"
    echo "$usuario  ALL=(ALL) ALL" >> /etc/sudoers
    echo "Adicionando linha em branco ao arquivo /etc/sudoers"
    echo >> /etc/sudoers
#
else
    echo "Nao ha linhas a serem adicionadas ao arquivo /etc/sudoers"
fi
echo "$senha" | passwd $usuario --stdin
usermod -aG root $usuario
chage -d 999999 $usuario
chage -l  $usuario
#
exit
