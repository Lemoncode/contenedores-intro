# Introducción a Docker 🐳📦

¡Hola lemoncoder 👋🏻🍋! En este repositorio encontrarás las demos mostradas durante los vídeos del módulo "Introducción a Docker". 

Este curso te llevará desde los conceptos básicos de Docker hasta técnicas avanzadas como Docker Compose y Docker Swarm, con ejemplos prácticos y demos que puedes seguir paso a paso.

## Contenido del repositorio

### 📚 `contenedores-i`: Cómo empezar con Docker
Introducción a Docker y primeros comandos básicos para familiarizarte con los contenedores.

### 🏗️ `contenedores-ii`: Cómo trabajar con las imágenes de Docker
- Trabajando con imágenes de terceros
- Tu primer Dockerfile
- Ejemplo práctico: aplicación web estática con Nginx
- Includes: `mi-primera-imagen-docker/` con Dockerfile y aplicación web básica

### 🚀 `contenedores-iii`: Cómo contenerizar una aplicación
- Contenerizando aplicaciones Node.js
- Múltiples estrategias de Dockerfile (desarrollo, producción, multi-stage)
- Ejemplo práctico: aplicación web con Express.js
- Includes: `doom-web/` con servidor Node.js y múltiples Dockerfiles

### 💾 `contenedores-iv`: Almacenamiento en Docker
- Gestión de volúmenes y persistencia de datos
- Ejemplo práctico: aplicación web con contenido estático
- Includes: `web-content/` con archivos HTML y CSS

### 🌐 `contenedores-v`: Networking
- Conceptos de redes en Docker
- Comunicación entre contenedores

### 🐳 `contenedores-vi`: Docker Compose y Docker Swarm
- Docker Compose para orquestación de múltiples contenedores
- Docker Swarm para clustering y escalabilidad
- Ejemplo práctico: WordPress completo con MySQL
- Includes: `compose.yml` para WordPress + MySQL y scripts de configuración

## 🎬 Índice navegable de apartados y vídeos

### Contenedores I ([README](contenedores-i/README.md#videos))
1. [Teoría](contenedores-i/README.md#v1-teoria)
2. [Demo 1 - Instalar Docker Desktop en MacOS](contenedores-i/README.md#v1-demo1-macos)
3. [Demo 2 - Instalar Docker Desktop en Windows](contenedores-i/README.md#v1-demo2-windows)
4. [Demo 3 - Mi primer contenedor con Docker Desktop](contenedores-i/README.md#v1-demo3-primer-contenedor)
5. [Demo 4 - Cómo crear tus primeros contenedores desde el terminal](contenedores-i/README.md#v1-demo4-terminal)

### Contenedores II ([README](contenedores-ii/README.md#videos))
1. [Teoría](contenedores-ii/README.md#v2-teoria)
2. [Demo 1 - Analizar una imagen desde Docker Desktop](contenedores-ii/README.md#v2-demo1-analizar-imagen)
3. [Demo 2 - Etiquetas y digest](contenedores-ii/README.md#v2-demo2-etiquetas-digest)
4. [Demo 3 - Un vistazo por la web de Docker Hub](contenedores-ii/README.md#v2-demo3-docker-hub)
5. [Demo 4 - Mi primera imagen de Docker](contenedores-ii/README.md#v2-demo4-primera-imagen)

### Contenedores III ([README](contenedores-iii/README.md#videos))
1. [Teoría](contenedores-iii/README.md#v3-teoria)
2. [Demo 1 - Ejecutar la aplicación en local](contenedores-iii/README.md#v3-demo1-local)
3. [Demo 2 - Mi primera contenerización](contenedores-iii/README.md#v3-demo2-conteneerizacion)
4. [Demo 3 - Diferentes Dockerfiles](contenedores-iii/README.md#v3-demo3-dockerfiles)
5. [Demo 4 - Dockerfiles con multistages](contenedores-iii/README.md#v3-demo4-multistages)

### Contenedores IV ([README](contenedores-iv/README.md#videos))
1. [Almacenamiento - Teoría](contenedores-iv/README.md#v4-almacenamiento-teoria)
2. [Almacenamiento - Demo 1 - Bind mount](contenedores-iv/README.md#v4-demo1-bind)
3. [Almacenamiento - Demo 2 - Volumen](contenedores-iv/README.md#v4-demo2-volumen)
4. [Almacenamiento - Demo 3 - Tmpfs](contenedores-iv/README.md#v4-demo3-tmpfs)
5. [Monitorización - Teoría](contenedores-iv/README.md#v4-monitorizacion-teoria)
6. [Monitorización - Demo 1 - docker events](contenedores-iv/README.md#v4-demo1-events)
7. [Monitorización - Demo 2 - docker stats](contenedores-iv/README.md#v4-demo2-stats)
8. [Monitorización - Demo 3 - docker logs](contenedores-iv/README.md#v4-demo3-logs)

### Contenedores V ([README](contenedores-v/README.md#videos))
1. [Teoría - Basics networking](contenedores-v/README.md#v5-basics)
2. [Teoría - Tipos de redes en Docker](contenedores-v/README.md#v5-tipos-redes)
3. [Demo 1 - Listar redes y probar la red bridge](contenedores-v/README.md#v5-demo1-bridge)
4. [Demo 2 - Cómo crear redes](contenedores-v/README.md#v5-demo2-crear-redes)
5. [Demo 3 - Red de tipo host](contenedores-v/README.md#v5-demo3-host)
6. [Demo 4 - Conectarse a la red no red](contenedores-v/README.md#v5-demo4-none)

### Contenedores VI ([README](contenedores-vi/README.md#videos))
1. [Docker Compose - Teoría](contenedores-vi/README.md#v6-compose-teoria)
2. [Docker Compose - Demo 1 - Ejemplo sin docker compose](contenedores-vi/README.md#v6-compose-demo1-sin-compose)
3. [Docker Compose - Demo 1 - Crear un Wordpress](contenedores-vi/README.md#v6-compose-demo1-wordpress)
4. [Docker Compose - Script comparativo](contenedores-vi/README.md#v6-compose-script-comparativo)
5. [Docker Swarm - Teoría](contenedores-vi/README.md#v6-swarm-teoria)
6. [Docker Swarm - Demo 1 - Crear servicio y escalar](contenedores-vi/README.md#v6-swarm-demo1-escalar)

1. **Requisitos previos**: Tener Docker instalado en tu sistema
2. **Navegación**: Cada directorio contiene su propio README con instrucciones específicas
3. **Progresión**: Se recomienda seguir el orden numérico para una experiencia de aprendizaje progresiva
4. **Práctica**: Cada sección incluye ejemplos prácticos que puedes ejecutar


Happy learning! 🎉
