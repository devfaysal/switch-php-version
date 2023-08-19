#!/bin/bash
clear
read -p "Please enter new php version: " newVersion
currentMajorVersion=$(php -r 'echo PHP_MAJOR_VERSION;')
currentMinorVersion=$(php -r 'echo PHP_MINOR_VERSION ;')
currentVersion="$currentMajorVersion.$currentMinorVersion"

if [ "$newVersion" = "$currentVersion" ]; then
    echo "$newVersion is the currently active PHP version"
    exit
fi

if [ "$newVersion" != "7.4" ] || [ "$newVersion" != "8.1" ] || [ "$newVersion" != "8.2" ]; then
    echo "PHP version $newVersion is not currently installed"
    exit
fi

echo "Current PHP version $currentVersion"

sudo a2dismod php$currentVersion

sudo a2enmod php$newVersion
sudo service apache2 restart

sudo update-alternatives --set php /usr/bin/php$newVersion
sudo update-alternatives --set phar /usr/bin/phar$newVersion
sudo update-alternatives --set phar.phar /usr/bin/phar.phar$newVersion

echo "PHP version updated to $newVersion"
php -v 
