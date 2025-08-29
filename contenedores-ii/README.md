# 🧱 Cómo trabajar con las imágenes de Docker <a id="top"></a>

En este módulo aprenderás a inspeccionar, entender y construir tu primera imagen de Docker.

## ⏱️ Duración de los vídeos: 1h1m

| # | Vídeo | Estimado |
|---|-------|----------|
| 1 | Teoría | 18m53s |
| 2 | Demo 1 - Analizar una imagen desde Docker Desktop | 6m4s |
| 3 | Demo 2 - Etiquetas y digest | 15m42s |
| 4 | Demo 3 - Un vistazo por la web de Docker Hub | 6m4s |
| 5 | Demo 4 - Mi primera imagen de Docker | 15m10s |

## 🎬 Vídeos de la clase <a id="videos"></a>

### 1. 📘 Teoría <a id="v2-teoria"></a>
En este vídeo se profundiza en el concepto de imágenes Docker. Explica qué son, cómo se estructuran en capas reutilizables, el proceso de pulling, y cómo se organizan en registros y repositorios. También aborda buenas prácticas para usar imágenes oficiales, cómo crear imágenes propias con Dockerfile, su etiquetado, y comandos clave para gestionarlas.

### 2. 🛠️ Demo 1 - Analizar una imagen desde Docker Desktop <a id="v2-demo1-analizar-imagen"></a>
Analizamos una imagen de Docker desde la interfaz de Docker Desktop, explorando visualmente sus capas e incluso la posibilidad de analizarlas en busca de vulnerabilidades con Docker Scout.

### 3. 🛠️ Demo 2 - Etiquetas y digest <a id="v2-demo2-etiquetas-digest"></a>
Exploramos las etiquetas y digest de las imágenes de Docker. Uso de tags semánticos y obtención de digest.

### 4. 🌐 Demo 3 - Un vistazo por la web de Docker Hub <a id="v2-demo3-docker-hub"></a>
Localización de imágenes oficiales vs community, lectura de documentación, ejemplos de uso y políticas de actualización.

### 5. 🧪 Demo 4 - Mi primera imagen de Docker <a id="v2-demo4-primera-imagen"></a>
Creación de un `Dockerfile` sencillo para servir contenido estático con `nginx` usando el ejemplo de `mi-primera-imagen-docker/`.

Comandos utilizados:

Para generar la imagen de Docker:

```bash
docker build -t miweb:dev .
```

Para crear un contenedor con la misma:

```bash
docker run -d -p 8080:80 miweb:dev
```

## ✅ Qué has aprendido hoy

- [x] Sabes diferenciar imagen vs contenedor
- [x] Has inspeccionado capas con `docker history`
- [x] Has usado tags y comprendido digest SHA256
- [x] Has revisado documentación de una imagen en Docker Hub
- [x] Has construido y ejecutado tu propia imagen base

> 🧭 Navegación: [⬅️ Anterior Contenedores I](../contenedores-i/README.md#videos) · [Siguiente ➡️ Contenedores III](../contenedores-iii/README.md#videos) · [Índice general](../README.md#videos-index)