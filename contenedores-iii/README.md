# 🧩 Cómo contenerizar una aplicación con Docker <a id="top"></a>

Ahora que ya tenemos instalado Docker Desktop y hemos ejecutado nuestros primeros contenedores, ha llegado el momento de contenerizar una aplicación real.

## ⏱️ Duración de los vídeos: (estimado) 47m

| # | Vídeo | Estimado |
|---|-------|----------|
| 1 | Teoría | 15m |
| 2 | Demo 1 - Ejecutar la aplicación en local | 5m |
| 3 | Demo 2 - Mi primera contenerización | 8m |
| 4 | Demo 3 - Diferentes Dockerfiles | 9m |
| 5 | Demo 4 - Dockerfiles con multistages | 10m |

## 🎬 Vídeos de la clase <a id="videos"></a>

### 1. 📘 Teoría <a id="v3-teoria"></a>
Diseño de imágenes para aplicaciones, buenas prácticas (imagen base mínima, usuario no root, capas ordenadas), estrategias de multi-stage build y diferencias entre entornos dev y prod.

### 2. 🏃 Demo 1 - Ejecutar la aplicación en local <a id="v3-demo1-local"></a>
Arranque de la app Node.js (`doom-web/`) sin Docker, revisión de dependencias (`package.json`) y endpoints básicos.

Comando utilizados durante el vídeo:

#### Acceder a la aplicación de ejemplo

```bash
cd doom-web
```

#### Instalar dependencias

```bash
npm install
```

#### Lanzar los tests

```bash
npm test
```

#### Ejecutar la aplicación

```bash
npm start
```

### 3. 🛠️ Demo 2 - Mi primera contenerización <a id="v3-demo2-conteneerizacion"></a>

Para este ejemplo se proporciona el siguiente [Dockerfile](./doom-web/Dockerfile).

### 4. 🧩 Demo 3 - Diferentes Dockerfiles para diferentes cometidos <a id="v3-demo3-dockerfiles"></a>
Separación de `Dockerfile` (prod), `Dockerfile.dev` (bind mounts, nodemon) y optimizaciones iniciales. Uso de argumentos y variables de entorno.

### 5. ✂️ Demo 4 - Dockerfiles con multistages <a id="v3-demo4-multistages"></a>
Implementación de `Dockerfile.multistages` para reducir tamaño: stage build (instalación completa y build si aplica) y stage runtime (imagen ligera final solo con artefactos necesarios).

## ✅ Qué has aprendido hoy

- [x] Has ejecutado la app Node.js en local
- [x] Has creado un Dockerfile base funcional
- [x] Has separado Dockerfiles para dev/prod
- [x] Has creado un multi-stage build
- [x] Has comprobado reducción de tamaño de imagen

> 🧭 Navegación: [⬅️ Anterior Contenedores II](../contenedores-ii/README.md#videos) · [Siguiente ➡️ Contenedores IV](../contenedores-iv/README.md#videos) · [Índice general](../README.md#videos-index)

