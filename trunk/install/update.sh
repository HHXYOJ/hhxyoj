sudo rm -r hhxyoj-read-only
sudo rm -r /var/www/html/JudgeOnline

WEBBASE=/var/www/html
APACHEUSER=www-data

sudo svn checkout https://github.com/HHXYOJ/hhxyoj/trunk/trunk hhxyoj-read-only


#compile and install the core
cd hhxyoj-read-only/core/
sudo ./make.sh
cd ../..
#install web and db
sudo cp -R hhxyoj-read-only/web $WEBBASE/JudgeOnline
sudo chmod -R 771 $WEBBASE/JudgeOnline
sudo chown -R $APACHEUSER $WEBBASE/JudgeOnline

sudo /etc/init.d/apache2 restart
sudo /etc/init.d/httpd restart
echo "Browse http://127.0.0.1/JudgeOnline to check if the installation is working" 

