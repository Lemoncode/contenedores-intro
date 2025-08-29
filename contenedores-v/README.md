# 🌐 Networking <a id="top"></a>

En este módulo profundizamos en cómo Docker implementa redes y cómo aprovechar diferentes drivers según el escenario.

## ⏱️ Duración de los vídeos: (estimado) 46m

| # | Vídeo | Estimado |
|---|-------|----------|
| 1 | Teoría - Basics networking | 11m |
| 2 | Teoría - Tipos de redes | 12m |
| 3 | Demo 1 - Listar redes y probar bridge | 6m |
| 4 | Demo 2 - Cómo crear redes | 7m |
| 5 | Demo 3 - Red de tipo host | 5m |
| 6 | Demo 4 - Red none | 5m |

## 📑 Índice rápido
- [Vídeos](#videos)
- [Volver al índice general](../README.md#🎬-Índice-navegable-de-apartados-y-vídeos)

## 🎬 Vídeos de la clase <a id="videos"></a>

### 1. 📘 Teoría - Basics networking <a id="v5-basics"></a>
Espacio de nombres de red, interfaces virtuales, bridge linux, asignación IP, DNS interno y comunicación container↔host.

### 2. 📘 Teoría - Tipos de redes en Docker <a id="v5-tipos-redes"></a>
Drivers: bridge, host, none, macvlan, overlay (mención), casos de uso y limitaciones.

### 3. 🧪 Demo 1 - Listar redes y probar la red bridge <a id="v5-demo1-bridge"></a>
`docker network ls`, inspección (`docker network inspect`), pruebas de conectividad entre contenedores en la misma red bridge.

### 4. 🛠️ Demo 2 - Cómo crear redes <a id="v5-demo2-crear-redes"></a>
Creación de redes bridge personalizadas (`docker network create`) y uso de nombres amigables para descubrimiento DNS automático.

### 5. 🛠️ Demo 3 - Red de tipo host <a id="v5-demo3-host"></a>
Ejecución con `--network host` (limitado en Docker Desktop), diferencias de performance y casos de uso.

### 6. 🛠️ Demo 4 - Conectarse a la red no red <a id="v5-demo4-none"></a>
Uso de `--network none`, aislamiento completo y escenarios de pruebas / hardening.

## ✅ Qué has aprendido hoy

- [x] Comprendes namespaces y bridge por defecto
- [x] Has listado y descrito redes existentes
- [x] Has creado una red bridge personalizada
- [x] Has probado conectividad entre contenedores por nombre
- [x] Entiendes cuándo usar red host
- [x] Has aislado un contenedor con red none

> 🧭 Navegación: [⬅️ Anterior Contenedores IV](../contenedores-iv/README.md#videos) · [Siguiente ➡️ Contenedores VI](../contenedores-vi/README.md#videos) · [Índice general](../README.md#videos-index)

