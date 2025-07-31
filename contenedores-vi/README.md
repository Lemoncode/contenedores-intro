# Contenedores IV: Docker Compose y Docker Swarm

# Docker Compose

# Docker Swarm

Cuando ya nos ponemos serios con Docker


```bash
docker swarm init
```


Con esto ya tendrías tu cluster de Docker Swarm funcionando en tu máquina local. Lo ideal es que tuvieras muchas más máquinas en tu clúster, pero para propósitos de desarrollo y pruebas, esto es suficiente.

Si quisieras ver cuántos nodos tiene tu clúster, puedes usar:

```bash
docker node ls
```

En este caso solo vamos a tener uno 🙈


Vale, y ahora ¿qué hacemos con esto? Pues lo primero es crear un servicio. Un servicio en Docker Swarm es una forma de ejecutar contenedores de manera distribuida y gestionada.

```bash
docker service create --name frontal-web --replicas 5 nginx
```

