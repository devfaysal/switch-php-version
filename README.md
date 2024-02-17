# Switch PHP Version
In development, some projects might require different PHP versions.

Switching the PHP CLI and PHP versions for web service requires several commands.
This script will run all the commands so that you do not need to run one by one.
PHP versions need to be installed before using this.

This repository can help you easily setup dev machine in Ubuntu: https://github.com/devfaysal/ubuntu-php-dev-setup

**Currently support only Apache for web server in Ubuntu.**

``` git clone https://github.com/devfaysal/switch-php-version.git ```

``` cd switch-php-version ```

``` mv switchPhpVersion.sh /usr/local/bin/switchphp  ```

Note: you can name 'switchphp' or anything that you prefer.

now you can run ```switchphp``` command from anywhere, it will ask you which version you want to use.

