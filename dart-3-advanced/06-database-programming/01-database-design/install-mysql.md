# Instruction
https://flaviocopes.com/mysql-how-to-install/

# Install MySQL on macOS using Homebrew
brew install mysql
brew services start mysql
mysql_secure_installation
brew services stop mysql
mysql.server start
mysql.server stop
mysql -u root -p

# MySQL IDE
- https://www.jetbrains.com/datagrip/
- https://tableplus.com/

# Create Database
CREATE DATABASE db_dart;

create table students
(
    id   int auto_increment,
    name varchar(255) null,
    constraint students_pk
        primary key (id)
);

create table teachers
(
    id    int auto_increment,
    name  varchar(255) null,
    topic varchar(255) null,
    constraint teachers_pk
        primary key (id)
);

