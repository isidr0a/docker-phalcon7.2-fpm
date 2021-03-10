# phalcon7.2-fpm


## English


**[image based on php:7.2-fpm](https://hub.docker.com/layers/php/library/php/7.2-fpm/images/sha256-9147397fdb726032f4fe6151ce1bcd39920af2db6e36163cd03c236d9f967ff8?context=explore "php:7.2-fpm")**


### Supported tags and respective Dockerfile links
* latest, 4.1
* [3x, 3.4.5](https://hub.docker.com/layers/139306368/isidr0a/phalcon7.2-fpm/3x/images/sha256-c75c83ab73b03f580724596708f6fcc34675af346635c3653b27331a9f23a85d?context=explore "version 3.4.5, 3x")
* [3.4.4](https://hub.docker.com/layers/139306368/isidr0a/phalcon7.2-fpm/3x/images/sha256-c75c83ab73b03f580724596708f6fcc34675af346635c3653b27331a9f23a85d?context=explore "version 3.4.4")

### Test Image

`docker run -i -t --rm isidr0a/phalcon7.2-fpm:3.4.5 php -m | grep phalcon`

*output:* **phalcon**


### How to use

**script:**

`docker run -i -t --rm  -v /path/local:/var/www/html isidr0a/phalcon7.2-fpm:3.4.5 php path/to/script.php`


**server:**

`docker run -d -p xxxx:9000 -v /path/local:/var/www/html  isidr0a/phalcon7.2-fpm:3.4.5`


### Thanks
* [GitHub](http://github.com/ "GitHub")
* [Docker hub](https://hub.docker.com "Docker hub")



## Español


**[Imagen basada en php:7.2-fpm](https://hub.docker.com/layers/php/library/php/7.2-fpm/images/sha256-9147397fdb726032f4fe6151ce1bcd39920af2db6e36163cd03c236d9f967ff8?context=explore "php:7.2-fpm")**

## Etiquetas admitidas y respectivos enlaces de Dockerfile
* latest, 4.1
* [3x, 3.4.5](https://hub.docker.com/layers/139306368/isidr0a/phalcon7.2-fpm/3x/images/sha256-c75c83ab73b03f580724596708f6fcc34675af346635c3653b27331a9f23a85d?context=explore "version 3.4.5, 3x")
* [3.4.4](https://hub.docker.com/layers/139306368/isidr0a/phalcon7.2-fpm/3x/images/sha256-c75c83ab73b03f580724596708f6fcc34675af346635c3653b27331a9f23a85d?context=explore "version 3.4.4")


### Probar imagen

`docker run -i -t --rm isidr0a/phalcon7.2-fpm:3.4.5 php -m | grep phalcon`

*salida:* **phalcon**


### como usar

**script:**

`docker run -i -t --rm  -v /path/local:/var/www/html isidr0a/phalcon7.2-fpm:3.4.5 php path/to/script.php`


**server:**

`docker run -d -p xxxx:9000 -v /path/local:/var/www/html  isidr0a/phalcon7.2-fpm:3.4.5`


## Gracias a
* [GitHub](http://github.com/ "GitHub")
* [Docker hub](https://hub.docker.com "Docker hub")