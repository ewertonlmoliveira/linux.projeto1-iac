#!/bin/bash

echo "Script de criação de estrutura de usuários, diretórios e permissões"

echo "Criando Diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando os usuários e suas especificações..."

useradd carlos -m -c "Carlos" -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
useradd maria -m -c "Maria" -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
useradd joao -m -c "Joao" -s /bin/bash -p $(openssl passwd -1 Senha123)  -G GRP_ADM


useradd debora -m -c "Debora" -s /bin/bash -p $(openssl passwd -1 Senha123)  -G GRP_VEN
useradd sebastiana -m -c "Sebastiana" -s /bin/bash -p $(openssl passwd -1 Senha123)  -G GRP_VEN
useradd roberto -m -c "Roberto" -s /bin/bash -p $(openssl passwd -1 Senha123)  -G GRP_VEN


useradd josefina -m -c "Josefina" -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
useradd amanda -m -c "Amanda" -s /bin/bash -p $(openssl passwd -1 Senha123)  -G GRP_SEC
useradd rogerio -m -c "Rogerio" -s /bin/bash -p $(openssl passwd -1 Senha123)  -G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Especificando nível de permissionamento ..."

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec


echo "Script finalizado !!!"



