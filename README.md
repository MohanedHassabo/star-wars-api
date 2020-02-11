# Star Wars Api

A PHP web api to be consumed by Star Wars App, which can easily be deployed on server along with Star Wars App which is already available on https://github.com/MohanedHassabo/star-wars-app.

## Requirements
- PHP (>= 7.3.14 as of this writing) It is expected to work as well on earlier versions (PHP 5.3 or later).
- MySQL or MariaDB
- Composer is required. Get composer from here: https://getcomposer.org/download/

## Installation
- Clone the repository,
- Run the following commands in the project directory: 
```composer dump-autoload``` to create vendor folder and autoloading classes.
```composer require adodb/adodb-php ^5.20``` to add ADOdb - Database Abstraction Layer for PHP package in vendor folder.
- Change your configuration in ```admin/include/config.php``` file.

### Done!

