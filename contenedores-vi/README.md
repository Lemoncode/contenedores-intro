# 🧩 Docker Compose y Docker Swarm <a id="top"></a>

En esta clase verás cómo declarar stacks multi-contenedor con Docker Compose y una introducción a orquestación con Docker Swarm (servicios y escalado).

## ⏱️ Duración de los vídeos: (estimado) 59m

| # | Vídeo | Estimado |
|---|-------|----------|
| 1 | Docker Compose - Teoría | 14m |
| 2 | Docker Compose - Demo 1 - Ejemplo sin docker compose | 9m |
| 3 | Docker Compose - Demo 1 - Crear un Wordpress | 10m |
| 4 | Docker Compose - Script comparativo | 6m |
| 5 | Docker Swarm - Teoría | 12m |
| 6 | Docker Swarm - Demo 1 - Crear servicio y escalar | 8m |

## 📑 Índice rápido
- [Docker Compose](#🐙-docker-compose)
- [Docker Swarm](#🐝-docker-swarm)
- [Vídeos](#videos)
- [Volver al índice general](../README.md#🎬-Índice-navegable-de-apartados-y-vídeos)

## 🐙 Docker Compose

Para que puedas entender perfectamente por qué es súper chulo usar, y aprender, Docker Compose, te recomiendo que eches antes un vistazo a [Crear un Wordpress.sh](Crear%20un%20Wordpress.sh). En este archivo se relatan todos los comandos que te harían falta si quisieras crear manualmente (uno a uno) todo lo necesario para tener un WordPress contenerizado. Paso a paso, el script realiza:

1. Crea una red bridge aislada para que los contenedores (MySQL y WordPress) se descubran: `docker network create wordpress-network`.
2. Lanza un contenedor MySQL 8.0 asociado a esa red, definiendo variables de entorno para credenciales y base de datos inicial, y monta un volumen named (`mysql_data`) en `/var/lib/mysql` para persistir los datos.
3. (Implícito) Se crea automáticamente el volumen `mysql_data` si no existía; se puede verificar con `docker volume ls`.
4. Lanza el contenedor de WordPress en la misma red (`wordpress-network`) apuntando a `mysqldb:3306` mediante las variables `WORDPRESS_DB_*`, exponiendo el puerto 80 interno en el 8000 del host y montando un volumen named `wordpress_data` en `/var/www/html` para persistir los ficheros de WordPress.
5. Lista (opcionalmente) el contenido inicial del directorio `/var/www/html` dentro del contenedor de WordPress para ver que los archivos están en el volumen: `docker exec wordpress ls -l /var/www/html`.
6. Muestra cómo realizar una limpieza completa: detener (`docker kill`), eliminar contenedores (`docker rm`), eliminar la red (`docker network rm`) y eliminar los volúmenes (`docker volume rm mysql_data wordpress_data`) para dejar el entorno como antes de empezar.

En resumen: red + base de datos + aplicación + persistencia en volúmenes + comprobación + teardown.

### 📄 Archivo compose.yml explicado
El archivo `compose.yml` que se muestra a continuación es una forma declarativa de definir todo lo que hace el script `Crear un Wordpress.sh`, pero de una manera mucho más sencilla, legible y mantenible. Vamos a desglosarlo:

#### services

Se trata de la sección donde vamos a tener la definición de los servicios (contenedores) que componen nuestra aplicación.

En este caso, tenemos dos servicios: `db` y `wordpress`.


### Volumes

En este bloque se realiza la declaración de los volúmenes named para que Docker los cree si no existen.


#### Networks

Se utiliza para crear la red bridge aislada para encapsular el stack.


Comandos útiles:
```bash
docker compose up -d      # Levantar
docker compose ps         # Ver estado
docker compose logs -f    # Seguir logs
docker compose down       # Parar y eliminar (mantiene volúmenes por defecto)
docker compose down -v    # Parar y eliminar incluyendo volúmenes
```

Si necesitas esperar a que MySQL acepte conexiones antes de que WordPress se configure, podrías añadir un `healthcheck` al servicio `db` y usar `depends_on` con condición en Compose v3.9+.


## 🐝 Docker Swarm

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

## 🎬 Vídeos de la clase <a id="videos"></a>

### 1. Docker Compose - Teoría <a id="v6-compose-teoria"></a>
Motivación, diferencias con ejecutar comandos manuales, declaración vs imperativo, estructura general (`services`, `volumes`, `networks`).

### 2. Docker Compose - Demo 1 - Ejemplo sin docker compose <a id="v6-compose-demo1-sin-compose"></a>
Reproducción manual (script) de lo que hará Compose: red + MySQL + WordPress + volúmenes.

### 3. Docker Compose - Demo 1 - Crear un Wordpress con Docker Compose <a id="v6-compose-demo1-wordpress"></a>
Uso de `docker compose up -d`, revisión de logs, persistencia y teardown (`docker compose down`).

### 4. Docker Compose - Script comparativo <a id="v6-compose-script-comparativo"></a>
Análisis del script `Crear un Wordpress.sh` y mapeo 1:1 a `compose.yml`.

### 5. Docker Swarm - Teoría <a id="v6-swarm-teoria"></a>
Conceptos: nodo manager/worker, servicios, tareas, overlay networks, reconciliación, escalado declarativo.

### 6. Docker Swarm - Demo 1 - Crear servicio y escalar <a id="v6-swarm-demo1-escalar"></a>
`docker swarm init`, creación de servicio `frontal-web`, escala de réplicas y observación con `docker service ps`.

> Navegación: [⬅️ Anterior Contenedores V](../contenedores-v/README.md#videos) · [Índice general](../README.md#videos-index)

## ✅ Qué has aprendido hoy

- [x] Entiendes diferencias enfoque manual vs declarativo (Compose)
- [x] Has levantado stack WordPress con compose.yml
- [x] Has comparado script vs archivo Compose
- [x] Has inicializado un swarm local
- [x] Has creado un servicio y escalado réplicas
- [x] Has inspeccionado tareas con `docker service ps`


