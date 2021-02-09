APACHE2=$(dpkg-query -W -f='${Status}' apache2 2>/dev/null | grep -c 'ok installed')
# kui APACHE2 muutuja väärtus võrdub 0-ga
if [ $APACHE2 -eq 0 ]; then
echo "Paigaldamie apache2"
apt install apache2
echo "Apache on paigaldatud"
# kui Apache2 muutuja värrtus võrdub 1-ga
elif [ $APACHE2 -eq 1 ]; then
echo "apache2 on juba paigaldatud"
service apache2 start
service apache2 status
fi

MYSQL=$(dpkg-query -W -f='${Status}' mysql-server 2>/dev/null | grep -c 'ok installed')
if [ $MYSQL -eq 0 ]; then
echo "Paigaldame mysql ja vajalikud lisad"
apt install mysql-server
echo "mysql on paigaldatud"
touch $HOME/.my.cnf
echo "[client]" >> $HOME/.my.cnf
echo "host = localhost" >> $HOME/.my.cnf 
echo "user = root" >> $HOME/.my.cnf
elif [ $MYSQL -eq 1 ]; then
echo "mysql-server on juba paigaldatud"
mysql
fi

PHP=$(dpkg-query -W -f='${Status}' php7.0 2>/dev/null | grep -c 'ok installed')
# kui PHP muutuja väärtus võrdub 0-ga
if [ $PHP -eq 0 ]; then
echo "Paigaldame PHP ja vajalikud lisad"
apt install php7.0 libapache2-mod-php7.0 php7.0-mysql
echo "php on paigaldatud"
# kui PHP muutuja väärtus võrdub 1-ga
elif [ $PHP -eq 1 ]; then
echo "php on juba paigaldatud"
which php
fi
