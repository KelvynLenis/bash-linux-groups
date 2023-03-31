#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

usedadd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
usedadd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
usedadd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

usedadd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
usedadd sebatiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
usedadd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

usedadd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
usedadd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
usedadd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 770 /publico

echo "Fim..."