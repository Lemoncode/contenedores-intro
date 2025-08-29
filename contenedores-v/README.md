# Networking

En este módulo profundizamos en cómo Docker implementa redes y cómo aprovechar diferentes drivers según el escenario.

## 🎬 Vídeos de la clase <a id="videos"></a>

### 1. Teoría - Basics networking
Espacio de nombres de red, interfaces virtuales, bridge linux, asignación IP, DNS interno y comunicación container↔host.

### 2. Teoría - Tipos de redes en Docker
Drivers: bridge, host, none, macvlan, overlay (mención), casos de uso y limitaciones.

### 3. Demo 1 - Listar redes y probar la red bridge
`docker network ls`, inspección (`docker network inspect`), pruebas de conectividad entre contenedores en la misma red bridge.

### 4. Demo 2 - Cómo crear redes
Creación de redes bridge personalizadas (`docker network create`) y uso de nombres amigables para descubrimiento DNS automático.

### 5. Demo 3 - Red de tipo host
Ejecución con `--network host` (limitado en Docker Desktop), diferencias de performance y casos de uso.

### 6. Demo 4 - Conectarse a la red no red
Uso de `--network none`, aislamiento completo y escenarios de pruebas / hardening.

> Navegación: [⬅️ Anterior Contenedores IV](../contenedores-iv/README.md#videos) · [Siguiente ➡️ Contenedores VI](../contenedores-vi/README.md#videos) · [Índice general](../README.md#videos-index)
