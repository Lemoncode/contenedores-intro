# 🧪 Mi primera imagen de Docker

Este directorio contiene los archivos usados en la demo "Mi primera imagen de Docker" del módulo Contenedores II. Construimos una imagen sencilla basada en `nginx` para servir contenido estático.

## 🧪 Pasos rápidos

```bash
# Construir la imagen (desde este directorio)
docker build -t miweb:dev .

# Ejecutar un contenedor
docker run -d -p 8080:80 miweb:dev
```

Abre http://localhost:8080 en tu navegador.

## 📂 Contenido
- `Dockerfile`: Define la imagen (usa nginx y copia `web/`).
- `web/`: Carpeta con el contenido estático (html, css, js).

## 🔄 Limpiar
```bash
docker ps -a --format '{{.ID}}\t{{.Image}}' | grep miweb:dev
docker stop <id>
docker rm <id>
docker image rm miweb:dev
```

> Navegación: [Volver a Contenedores II](../README.md#v2-demo4-primera-imagen)