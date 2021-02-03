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
