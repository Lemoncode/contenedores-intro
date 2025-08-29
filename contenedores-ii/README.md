# Cómo trabajar con las imágenes de Docker <a id="top"></a>

En este módulo aprenderás a inspeccionar, entender y construir imágenes de Docker de forma eficiente.

## 📑 Índice rápido
- [Vídeos](#videos)
- [Volver al índice general](../README.md#🎬-Índice-navegable-de-apartados-y-vídeos)

## 🎬 Vídeos de la clase <a id="videos"></a>

### 1. Teoría <a id="v2-teoria"></a>
Conceptos: qué es una imagen, capas (layers), union filesystem, caching, diferencia entre imagen y contenedor, registries (Docker Hub), tags y digest (contenido inmutable via SHA256).

### 2. Demo 1 - Analizar una imagen desde Docker Desktop <a id="v2-demo1-analizar-imagen"></a>
Exploración visual de capas, historial (`docker history`), configuración (Entrypoint / Cmd / Exposed Ports / Env) e inspección (`docker image inspect`).

### 3. Demo 2 - Etiquetas y digest <a id="v2-demo2-etiquetas-digest"></a>
Uso de tags semánticos, obtención de digest (`docker pull imagen@sha256:...`), demostración de inmutabilidad y buenas prácticas para pinnear versiones.

### 4. Demo 3 - Un vistazo por la web de Docker Hub <a id="v2-demo3-docker-hub"></a>
Cómo localizar imágenes oficiales vs community, leer la documentación, encontrar ejemplos de uso y políticas de actualización.

### 5. Demo 4 - Mi primera imagen de Docker <a id="v2-demo4-primera-imagen"></a>
Creación de un `Dockerfile` sencillo para servir contenido estático con `nginx` usando el ejemplo de `mi-primera-imagen-docker/`. Comandos: `docker build -t miweb:dev .` y prueba con `docker run -d -p 8080:80 miweb:dev`.

> Navegación: [⬅️ Anterior Contenedores I](../contenedores-i/README.md#videos) · [Siguiente ➡️ Contenedores III](../contenedores-iii/README.md#videos) · [Índice general](../README.md#videos-index)
