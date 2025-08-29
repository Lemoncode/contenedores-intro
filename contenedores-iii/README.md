# Cómo contenerizar una aplicación con Docker

Ahora que ya tenemos instalado Docker Desktop y también hemos ejecutado nuestros primeros contenedores ha llegado el momento de contenerizar una aplicación, pero de verdad.

## 🎬 Vídeos de la clase

### 1. Teoría
Diseño de imágenes para aplicaciones, buenas prácticas (imagen base mínima, no root, capas ordenadas), estrategias de multi-stage build y diferencias entre entornos dev y prod.

### 2. Demo 1 - Ejecutar la aplicación en local
Arranque de la app Node.js (`doom-web/`) sin Docker, revisión de dependencias (`package.json`) y endpoints básicos.

### 3. Demo 2 - Mi primera contenerización
Dockerfile base para producción: copiar `package*.json`, instalar dependencias, copiar código, exponer puerto y definir `CMD`.

### 4. Demo 3 - Diferentes Dockerfiles para diferentes cometidos
Separación de `Dockerfile` (prod), `Dockerfile.dev` (montajes, nodemon) y optimizaciones iniciales. Uso de argumentos y variables de entorno.

### 5. Demo 4 - Dockerfiles con multistages
Implementación de `Dockerfile.multistages` para reducir tamaño: stage build (instalación completa y compilación si aplica) y stage runtime (imagen ligera final con solo artefactos necesarios).

> Siguiente: profundiza en almacenamiento con `contenedores-iv`.
