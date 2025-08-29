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

## 🎬 Índice de vídeos por módulo

### Contenedores I
1. Teoría
2. Demo 1 - Instalar Docker Desktop en MacOS
3. Demo 2 - Instalar Docker Desktop en Windows
4. Demo 3 - Mi primer contenedor con Docker Desktop
5. Demo 4 - Cómo crear tus primeros contenedores desde el terminal

### Contenedores II
1. Teoría
2. Demo 1 - Analizar una imagen desde Docker Desktop
3. Demo 2 - Etiquetas y digest
4. Demo 3 - Un vistazo por la web de Docker Hub
5. Demo 4 - Mi primera imagen de Docker

### Contenedores III
1. Teoría
2. Demo 1 - Ejecutar la aplicación en local
3. Demo 2 - Mi primera contenerización
4. Demo 3 - Diferentes Dockerfiles para diferentes cometidos
5. Demo 4 - Dockerfiles con multistages

### Contenedores IV
1. Almacenamiento - Teoría
2. Almacenamiento - Demo 1 - Bind mount
3. Almacenamiento - Demo 2 - Volumen
4. Almacenamiento - Demo 3 - Tmpfs
5. Monitorización - Teoría
6. Monitorización - Demo 1 - docker events
7. Monitorización - Demo 2 - docker stats
8. Monitorización - Demo 3 - docker logs

### Contenedores V
1. Teoría - Basics networking
2. Teoría - Tipos de redes en Docker
3. Demo 1 - Listar redes y probar la red bridge
4. Demo 2 - Cómo crear redes
5. Demo 3 - Red de tipo host
6. Demo 4 - Conectarse a la red no red

### Contenedores VI
1. Docker Compose - Teoría
2. Docker Compose - Demo 1 - Ejemplo sin docker compose
3. Docker Compose - Demo 1 - Crear un Wordpress con Docker Compose
4. Docker Compose - Crear un Wordpress con Docker Compose (script comparativo)
5. Docker Compose - Teoría (variables y extensiones)
6. Docker Swarm - Teoría
7. Docker Swarm - Demo 1 - Crear servicio y escalar

## 🚀 Cómo usar este repositorio

1. **Requisitos previos**: Tener Docker instalado en tu sistema
2. **Navegación**: Cada directorio contiene su propio README con instrucciones específicas
3. **Progresión**: Se recomienda seguir el orden numérico para una experiencia de aprendizaje progresiva
4. **Práctica**: Cada sección incluye ejemplos prácticos que puedes ejecutar


Happy learning! 🎉
