To be up and running, please following the below steps:
1) The first thing you do is customize the Section 1 in file
   .../custom/apache/conf/ff-bootstrap.conf
2) Go to .../custom/apache/conf/httpd.conf and change the Include
   to absolute path of .../custom/apache/conf/ff-bootstrap.conf
   (make sure to use forward slashes '/' in apache configs)
3) If using PHP DSO Mode (i.e. LoadModule in Apache), customize
   the PHP extension_dir in .../custom/php/phpdso/php.ini
   to point to absolute directory of installed PHP extension
4) If you need to connect to DB2, edit .../custom/php/phpdso/php.ini
   or .../custom/php/phpfcgi/php.ini, whichever one you are using, and
   change all ext=<actual_custom_dir> to your custom directory.
   and point
5) Your custom Apache config resides in:
   .../custom/apache/conf/httpd.conf
   Further commands must be issues from Apache bin directory
   To test config file without starting server, use:
     httpd.exe -f "c:\custom\apache\httpd.conf" -t
   You will need to install Apache services using the command:
     httpd.exe -k install -n "env-apache24" -f "c:\custom\apache\httpd\my.conf"
   To uninstall, use:
     httpd.exe -k uninstall -n "env-apache24"
    
