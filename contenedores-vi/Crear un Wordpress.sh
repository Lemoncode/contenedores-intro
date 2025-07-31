#1. Creo la red donde ambos contenedores van poder comunicarse
docker network create wordpress-network

#2. Creo la base de datos MySQL, conectada a la red anterior, con un volumen que guarde la información de /var/lib/mysql.
#Nota: Si estás en Windows cambia las \ por ` en el comando. Solo es para colocar el comando en varias lineas :-)
docker run -dit --name mysqldb \
--network wordpress-network \
--mount source=mysql_data,target=/var/lib/mysql \
 -e MYSQL_ROOT_PASSWORD=somewordpress \
 -e MYSQL_DATABASE=wpdb \
 -e MYSQL_USER=wp_user \
 -e MYSQL_PASSWORD=wp_pwd \
  mysql:8.0

#2.1 Esto habrá hecho que se genere un volumen nuevo llamado mysql_data
docker volume ls

#3. Ahora que ya tenemos la base de datos, el siguiente paso sería generar el contenedor de Wordpress
# dentro de la misma red y apuntando al contenedor de MySQL
docker run -dit --name wordpress \
--network wordpress-network \
-v wordpress_data:/var/www/html \
-e WORDPRESS_DB_HOST=mysqldb:3306 \
-e WORDPRESS_DB_USER=wp_user -e WORDPRESS_DB_PASSWORD=wp_pwd -e WORDPRESS_DB_NAME=wpdb \
-p 8000:80 wordpress:6.6.2-php8.1-apache

#Este es el contenido en el volumen wordpress_data
docker exec wordpress ls -l /var/www/html

#Si quisiera eliminar todo el proceso debería de hacer
docker kill wordpress mysqldb && \ 
  docker rm wordpress mysqldb && \
  docker network rm wordpress-network && \
  docker volume rm mysql_data wordpress_data