# 🗄️ Almacenamiento en Docker

Cuando estamos hablando de contenedores, uno de los temas más importantes es el almacenamiento de datos. En esta clase aprenderemos sobre los diferentes tipos de almacenamiento que Docker ofrece y cómo utilizarlos en nuestros contenedores.

## 📂 Tipos de almacenamiento en Docker

Docker ofrece varios tipos de almacenamiento que se pueden utilizar en los contenedores:

1. **Volúmenes**: Son la forma preferida de persistir datos generados y utilizados por contenedores. Los volúmenes son gestionados por Docker y se almacenan en el sistema de archivos de la máquina host.

2. **Bind mounts**: Permiten montar un directorio del sistema de archivos del host en un contenedor. A diferencia de los volúmenes, los bind mounts no son gestionados por Docker y dependen de la estructura del sistema de archivos del host.

3. **tmpfs mounts**: Son un tipo de almacenamiento en memoria que se utiliza para datos temporales. Los datos en un tmpfs mount se almacenan en la memoria RAM y se pierden cuando el contenedor se detiene.

## 🛠️ Creando y utilizando volúmenes

Durante los vídeos se mostró cómo era posible utilizar los diferentes tipos, utilizando el directorio `web-content` para almacenar contenido web que luego es servido por un contenedor de Nginx.

### 🔗 Bind mount

Bind mount nos ofrece la posibilidad de montar un directorio específico del sistema de archivos del host en un contenedor. Esto es útil cuando queremos que el contenedor acceda a archivos o directorios que ya existen en el host.

Para utilizar un bind mount, se puede utilizar la opción `--mount` al iniciar un contenedor:

```bash
docker run -d --mount type=bind,source="$(pwd)/web-content",target=/usr/share/nginx/html nginx
```

Esto montará el directorio `web-content` del sistema de archivos del host en `/usr/share/nginx/html` dentro del contenedor.

### 📦 Volume

Los volúmenes son la forma preferida de persistir datos generados y utilizados por contenedores. A diferencia de los bind mounts, los volúmenes son gestionados por Docker y se almacenan en una ruta interna controlada por el engine (por ejemplo `/var/lib/docker/volumes/...`).

Comportamiento importante (copia inicial): si montas por primera vez un volumen vacío sobre una ruta del contenedor que ya contiene archivos en la imagen (por ejemplo `/usr/share/nginx/html` en la imagen oficial de `nginx`), Docker COPIA ese contenido inicial de la imagen dentro del volumen. A partir de ese momento, lo que ve el contenedor es el contenido del volumen (ya desacoplado de la capa de sólo lectura de la imagen).

Esto a veces genera confusión: si lo que quieres es ver tu carpeta local `web-content`, un volumen named NO la traerá; para eso debes usar un bind mount (montas directamente tu carpeta) o poblar el volumen manualmente con tus archivos.

Ejemplo rápido creando y usando un volumen named:

```bash
docker run -d --mount type=volume,source=halloween-data,target=/usr/share/nginx/html -p 8080:80 nginx
```

Cómo poblar un volumen con el contenido de una carpeta local (sin bind mount permanente):

```bash
# 1. Crear el volumen (opcional; docker lo crea implícitamente si no existe)
docker volume create halloween-data

# 2. Copiar archivos desde tu carpeta local al volumen usando un contenedor temporal
docker run --rm \
	-v halloween-data:/dest \
	-v "$(pwd)/web-content":/src \
	busybox sh -c 'cp -a /src/. /dest/'

# 3. Levantar nginx usando el volumen ya poblado
docker run -d -p 8080:80 -v halloween-data:/usr/share/nginx/html nginx
```

Alternativa (copiar dentro de un contenedor que ya está corriendo) usando `docker cp`:

```bash
docker cp web-content/. <container_id>:/usr/share/nginx/html
```

Comandos útiles adicionales:

```bash
docker volume ls
docker volume inspect halloween-data
```

### ⚡ Tmpfs

Por último, los mounts `tmpfs` son un tipo de almacenamiento en memoria que se utiliza para datos temporales. Los datos en un `tmpfs mount` se almacenan en la memoria RAM y se pierden cuando el contenedor se detiene.

Cuando estamos trabajando con Docker Desktop no es posible utilizar mounts `tmpfs` como tal pero durante los vídeos de esta clase se mostró cómo sería el comando:

```bash
docker run -d --mount type=tmpfs,target=/usr/share/nginx/html nginx
```

## 🤔 ¿Cuándo usar cada opción?

| Caso | Usa un volumen | Usa un bind mount | Usa tmpfs |
|------|----------------|-------------------|-----------|
| Desarrollo local con hot reload |  | ✅ Sí (código/ficheros locales) |  |
| Persistir datos de aplicación (bbdd, uploads) | ✅ Sí |  |  |
| Compartir datos entre contenedores | ✅ Sí (mismo volumen) | Posible pero frágil |  |
| Sembrar datos iniciales y luego mantenerlos | ✅ Sí (poblar y reutilizar) |  |  |
| Acceso a toolchain/ código host puntual |  | ✅ |  |
| Datos muy temporales / sensibles (cachés, claves efímeras) |  |  | ✅ Sí |
| Backup / migración sencilla | ✅ (volumes + docker backup) |  |  |
| Evitar acoplarse a layout host | ✅ |  |  |

Guía rápida:
- Elige volumen para persistencia, portabilidad y aislamiento.
- Elige bind mount para iterar rápido sobre archivos locales (desarrollo).
- Elige tmpfs para datos que deben desaparecer y vivir solo en RAM.

## ✅ Conclusión

El almacenamiento es un aspecto crucial al trabajar con contenedores Docker. Comprender los diferentes tipos de almacenamiento y cómo utilizarlos te permitirá gestionar mejor los datos en tus aplicaciones contenerizadas.

## 🎬 Vídeos de la clase <a id="videos"></a>

### 1. Almacenamiento - Teoría
Tipos (bind mount, volumen, tmpfs), casos de uso, performance, lifecycle y copia inicial de datos en volúmenes vacíos.

### 2. Almacenamiento - Demo 1 - Bind mount
Montaje de carpeta local `web-content` en contenedor `nginx` para hot-reload de contenido estático.

### 3. Almacenamiento - Demo 2 - Volumen
Creación y uso de volúmenes named, ver copia inicial, inspección y persistencia tras recrear contenedor.

### 4. Almacenamiento - Demo 3 - Tmpfs
Uso teórico/práctico de `--mount type=tmpfs` para datos efímeros en memoria y limitaciones en Docker Desktop.

### 5. Monitorización - Teoría
Visión general: eventos, métricas de recursos, logs, buenas prácticas de observabilidad en entornos container.

### 6. Monitorización - Demo 1 - docker events
Escucha en tiempo real de lifecycle de contenedores y creación/eliminación de recursos.

### 7. Monitorización - Demo 2 - docker stats
Lectura de uso de CPU, memoria, red y bloqueos para varios contenedores simultáneamente.

### 8. Monitorización - Demo 3 - docker logs
Uso de `docker logs -f`, rotación básica, timestamps y filtrado.

> Navegación: [⬅️ Anterior Contenedores III](../contenedores-iii/README.md#videos) · [Siguiente ➡️ Contenedores V](../contenedores-v/README.md#videos) · [Índice general](../README.md#videos-index)
