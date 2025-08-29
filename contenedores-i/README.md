# Cómo empezar con Docker <a id="top"></a>

En la primera clase de esta introducción se explicará qué es Docker y por qué es útil para los desarrolladores. También se cubrirán los conceptos básicos de la contenedorización y cómo Docker facilita la creación, despliegue y ejecución de aplicaciones en contenedores.

## Instalación de Docker

En la parte práctica el principal objetivo es mostrar cómo se puede instalar Docker Desktop, lo cual nos permite empezar rápidamente en nuestras máquinas con contenedores sin complicarnos mucho.

Para descargarlo, [ve a la página oficial de Docker](https://www.docker.com/) y sigue las instrucciones para tu sistema operativo.

## Nuestro primer contenedor

## 📑 Índice rápido
- [Instalación de Docker](#instalación-de-docker)
- [Nuestro primer contenedor](#nuestro-primer-contenedor)
- [Vídeos](#videos)
- [Volver al índice general](../README.md#🎬-Índice-navegable-de-apartados-y-vídeos)


## 🎬 Vídeos de la clase <a id="videos"></a>

### 1. Teoría <a id="v1-teoria"></a>
Repaso de qué es Docker, diferencias con máquinas virtuales, capas (Union FS), imágenes vs contenedores, registro y flujo build -> ship -> run.

### 2. Demo 1 - Instalar Docker Desktop en MacOS <a id="v1-demo1-macos"></a>
Guía paso a paso de instalación en macOS y validación con `docker version` y `docker run hello-world`.

### 3. Demo 2 - Instalar Docker Desktop en Windows <a id="v1-demo2-windows"></a>
Instalación en Windows (WSL2), comprobaciones básicas y verificación de que el engine queda operativo.

### 4. Demo 3 - Mi primer contenedor con Docker Desktop <a id="v1-demo3-primer-contenedor"></a>
Uso de la interfaz gráfica para lanzar una imagen oficial (hello-world / nginx), inspección visual de logs y lifecycle básico (start / stop / delete).

### 5. Demo 4 - Cómo crear tus primeros contenedores desde el terminal <a id="v1-demo4-terminal"></a>
Primeros comandos: `docker pull`, `docker run`, flags `-d -p --name`, listar con `docker ps`, parar, eliminar (`docker stop`, `docker rm`), ver logs y shell interactivo (`docker exec -it`).

> Navegación: [Siguiente ➡️ Contenedores II](../contenedores-ii/README.md#videos) · [Índice general](../README.md#videos-index)

