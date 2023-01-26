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
