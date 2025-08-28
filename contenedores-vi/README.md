# 🧩 Contenedores IV: Docker Compose y Docker Swarm

# 🐙 Docker Compose

Para que puedas entender perfectamente por qué es súper chulo usar, y aprender, Docker Compose, te recomiendo que eches antes un vistazo a [Crear un Wordpress.sh](Crear%20un%20Wordpress.sh). En este archivo se relatan todos los comandos que te harían falta si quisieras crear manualmente (uno a uno) todo lo necesario para tener un WordPress contenerizado. Paso a paso, el script realiza:

1. Crea una red bridge aislada para que los contenedores (MySQL y WordPress) se descubran: `docker network create wordpress-network`.
2. Lanza un contenedor MySQL 8.0 asociado a esa red, definiendo variables de entorno para credenciales y base de datos inicial, y monta un volumen named (`mysql_data`) en `/var/lib/mysql` para persistir los datos.
3. (Implícito) Se crea automáticamente el volumen `mysql_data` si no existía; se puede verificar con `docker volume ls`.
4. Lanza el contenedor de WordPress en la misma red (`wordpress-network`) apuntando a `mysqldb:3306` mediante las variables `WORDPRESS_DB_*`, exponiendo el puerto 80 interno en el 8000 del host y montando un volumen named `wordpress_data` en `/var/www/html` para persistir los ficheros de WordPress.
5. Lista (opcionalmente) el contenido inicial del directorio `/var/www/html` dentro del contenedor de WordPress para ver que los archivos están en el volumen: `docker exec wordpress ls -l /var/www/html`.
6. Muestra cómo realizar una limpieza completa: detener (`docker kill`), eliminar contenedores (`docker rm`), eliminar la red (`docker network rm`) y eliminar los volúmenes (`docker volume rm mysql_data wordpress_data`) para dejar el entorno como antes de empezar.

En resumen: red + base de datos + aplicación + persistencia en volúmenes + comprobación + teardown.

### 📄 Archivo compose.yml explicado

```yaml
services:
	db:
		image: mysql:8.0
		volumes:
			- db_data:/var/lib/mysql
		restart: always
		environment:
			MYSQL_ROOT_PASSWORD: root_pwd
			MYSQL_DATABASE: wpdb
			MYSQL_USER: wp_user
			MYSQL_PASSWORD: wp_pwd
		networks:
			- wordpress-network

	wordpress:
		depends_on:
			- db
		image: wordpress:6.6.2-php8.1-apache
		volumes:
			- wordpress_data:/var/www/html
		ports:
			- "8000:80"
		restart: always
		environment:
			WORDPRESS_DB_HOST: db:3306
			WORDPRESS_DB_USER: wp_user
			WORDPRESS_DB_PASSWORD: wp_pwd
			WORDPRESS_DB_NAME: wpdb
		networks:
			- wordpress-network

volumes:
	db_data:
	wordpress_data:

networks:
	wordpress-network:
```

Desglose:
- `services.db`: Contenedor MySQL 8.0. Persistencia con volumen named `db_data` (montado en `/var/lib/mysql`). Variables de entorno inicializan la base y usuario.
- `restart: always`: Reinicia el contenedor salvo que lo detengas explícitamente.
- `networks`: Ambos servicios comparten `wordpress-network` para resolución DNS interna (`db` se resuelve como hostname `db`).
- `services.wordpress`: Imagen oficial WordPress con Apache + PHP 8.1. Volumen `wordpress_data` para persistir ficheros (plugins, temas, uploads).
- `depends_on`: Orquesta el arranque lanzando primero `db` (no espera a que MySQL esté listo a nivel de salud; solo orden de inicio).
- `ports 8000:80`: Expone WordPress externamente en http://localhost:8000.
- Variables `WORDPRESS_DB_*`: Configuran la conexión a MySQL usando el hostname interno `db` y el puerto `3306`.
- `volumes` (bloque raíz): Declaración de los volúmenes named para que Docker los cree si no existen.
- `networks` (bloque raíz): Crea la red bridge aislada para encapsular el stack.

Comandos útiles:
```bash
docker compose up -d      # Levantar
docker compose ps         # Ver estado
docker compose logs -f    # Seguir logs
docker compose down       # Parar y eliminar (mantiene volúmenes por defecto)
docker compose down -v    # Parar y eliminar incluyendo volúmenes
```

Si necesitas esperar a que MySQL acepte conexiones antes de que WordPress se configure, podrías añadir un `healthcheck` al servicio `db` y usar `depends_on` con condición en Compose v3.9+.


# 🐝 Docker Swarm

Cuando ya nos ponemos serios con Docker y queremos orquestar múltiples contenedores en varios nodos (máquinas), Docker Swarm es una solución integrada en Docker que permite crear y gestionar clusters de contenedores de forma sencilla. 

Si quieres trabajar con un clúster de Docker Swarm, lo primero que debes hacer es inicializarlo en tu máquina local:

```bash
docker swarm init
```

Con esto ya tendrías tu cluster de Docker Swarm funcionando en tu máquina local. Lo ideal es que tuvieras muchas más máquinas en tu clúster, pero para propósitos de desarrollo y pruebas, esto es suficiente.

Si quisieras ver cuántos nodos tiene tu clúster, puedes usar:

```bash
docker node ls
```

En este caso solo vamos a tener uno 🙈


Vale, y ahora ¿qué hacemos con esto? Pues lo primero es crear un servicio. Un servicio en Docker Swarm es una forma de ejecutar contenedores de manera distribuida y gestionada.

```bash
docker service create --name frontal-web --replicas 5 nginx
```
Para ver el estado del servicio, puedes usar:

```bash
docker service ls
```

y si quieres ver el listado de contenedores de un servicio en particular:

```bash
docker service ps frontal-web
```

Si quisiera escalar este servicio, podría usar el siguiente comando:

```bash
docker service scale frontal-web=10
```

Esto aumentaría el número de réplicas del servicio `frontal-web` a 10. Docker Swarm se encargaría de crear y distribuir los nuevos contenedores en el clúster.
