# Cómo contenerizar una aplicación con Docker <a id="top"></a>

Ahora que ya tenemos instalado Docker Desktop y también hemos ejecutado nuestros primeros contenedores ha llegado el momento de contenerizar una aplicación, pero de verdad.

## 📑 Índice rápido
- [Vídeos](#videos)
- [Volver al índice general](../README.md#🎬-Índice-navegable-de-apartados-y-vídeos)

## 🎬 Vídeos de la clase <a id="videos"></a>

### 1. Teoría <a id="v3-teoria"></a>
Diseño de imágenes para aplicaciones, buenas prácticas (imagen base mínima, no root, capas ordenadas), estrategias de multi-stage build y diferencias entre entornos dev y prod.

### 2. Demo 1 - Ejecutar la aplicación en local <a id="v3-demo1-local"></a>
Arranque de la app Node.js (`doom-web/`) sin Docker, revisión de dependencias (`package.json`) y endpoints básicos.

### 3. Demo 2 - Mi primera contenerización <a id="v3-demo2-conteneerizacion"></a>
Dockerfile base para producción: copiar `package*.json`, instalar dependencias, copiar código, exponer puerto y definir `CMD`.

### 4. Demo 3 - Diferentes Dockerfiles para diferentes cometidos <a id="v3-demo3-dockerfiles"></a>
Separación de `Dockerfile` (prod), `Dockerfile.dev` (montajes, nodemon) y optimizaciones iniciales. Uso de argumentos y variables de entorno.

### 5. Demo 4 - Dockerfiles con multistages <a id="v3-demo4-multistages"></a>
Implementación de `Dockerfile.multistages` para reducir tamaño: stage build (instalación completa y compilación si aplica) y stage runtime (imagen ligera final con solo artefactos necesarios).

> Navegación: [⬅️ Anterior Contenedores II](../contenedores-ii/README.md#videos) · [Siguiente ➡️ Contenedores IV](../contenedores-iv/README.md#videos) · [Índice general](../README.md#videos-index)

## ⏱️ Duración estimada

| # | Vídeo | Estimado |
|---|-------|----------|
| 1 | Teoría | 15m |
| 2 | Demo 1 (Local) | 5m |
| 3 | Demo 2 (Dockerfile base) | 8m |
| 4 | Demo 3 (Variantes) | 9m |
| 5 | Demo 4 (Multistage) | 10m |

> Ajusta los tiempos cuando tengas las duraciones reales.

## ✅ Checklist de avance

- [x] Has ejecutado la app Node.js en local
- [x] Has creado un Dockerfile base funcional
- [x] Has separado Dockerfiles para dev/prod
- [x] Has creado un multi-stage build
- [x] Has comprobado reducción de tamaño de imagen

