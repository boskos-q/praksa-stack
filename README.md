# Praksa Stack

Simple docker stack for testing interns assignments

## Description

This stack uses PHP8 & MySQL 5.7

## DB Credentials

    MYSQL_ROOT_PASSWORD: password
    MYSQL_DATABASE: symfony
    MYSQL_USER: mysql
    MYSQL_PASSWORD: password

In project, use `mysql` as host for connection to the database instead of `127.0.0.1` e.g.:
`$pdo = new PDO('mysql:dbname=symfony;host=mysql', 'mysql', 'password');`

If you're using some MySQL desktop app e.g. MySQLWorkbenc, Sequel Pro, etc. for host use `127.0.0.1`

## Getting Started

Edit your `hosts` files and add alias for this docker container

`sudo echo '127.0.0.1  dev.praksa.local' >> /etc/hosts`
### Dependencies

* Docker & Docker Compose

### Installing & Running

* Clone this project
* Go to the projects subfolder
* Clone assignment from the intern `git clone https://github.com/boskos-q/test-assignment.git`
* run `./setup.sh <intern-project-folder>` e.g. `./setup.sh test-assignment`
* Go to the newly created `zadatak` folder which is root of the project
* *Optional:* `composer install` if composer is used
* Start stack `docker-compose up`
* Open browser and navigate to: `http://dev.praksa.local`
* HF :)

*You can clone as many projects as you want to the `projects` folder, and just repeat steps from Installing & Running. `setup.sh` script will re-create `zadatak` folder for you from scratch.*


## Authors

Contributors names and contact info

[@boskos-q](https://github.com/boskos-q)


## License

This project is licensed under the [GPL-2.0] License - see the [tl;dr Legal](https://www.tldrlegal.com/l/gpl2) for details