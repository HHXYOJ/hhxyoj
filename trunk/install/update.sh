sudo rm -r hhxyoj-read-only
sudo rm -r hhxyoj-bak
sudo mkdir hhxyoj-bak
sudo mv -r /var/www/html/JudgeOnline ./hhxyoj-bak

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

sudo /etc/init.d/nginx restart
echo "Browser http://127.0.0.1/JudgeOnline to check if the installation is working" 

