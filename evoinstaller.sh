#!/bin/bash
# Descripción: mini script para la instalacion de tema evolution e actualización de directadmin

echo "Updating directadmin"
echo "+++++++++++++++++++++++++++"
echo "building update"
/usr/local/directadmin/custombuild/build update
echo "updating apache"
/usr/local/directadmin/custombuild/build apache
echo "building confs"
/usr/local/directadmin/custombuild/build rewrite_confs
echo "updatin round cube"
/usr/local/directadmin/custombuild/build roundcube
echo "updatind dovecot"
/usr/local/directadmin/custombuild/build dovecot
echo "updating phpmyadmin"
/usr/local/directadmin/custombuild/build phpmyadmin
echo "Updating DA version"
/usr/local/directadmin/custombuild/build version
echo "Finishing update"
/usr/local/directadmin/custombuild/build update

echo "Creando directorio para el skin evolution"
mkdir /usr/local/directadmin/data/skins/evolution

echo "descargando el archivo necesario"
wget -O /usr/local/directadmin/data/skins/evolution http://demo.directadmin.com/download/evolution.tar.gz

echo "descrompimiendo el archivo"
tar -xvzf evolution.tar.gz -C /usr/local/directadmin/data/skins/evolution

echo "realizando ajustes en el skin"
mv /usr/local/directadmin/data/skins/enhanced /usr/local/directadmin/data/skins/enhancedORG
cp /usr/local/directadmin/data/skins/evolution /usr/local/directadmin/data/skins/enhanced

echo "reiniciando diredadrmin"
service directadmin restart

echo "proceso concluido"
echo "++++++++++++++++++++++++++++"