#Esta es la imagen que utilizaré como base de mi imagen
FROM node:20-alpine

#Establezco la ruta /app como directorio de trabajo para alojar mi aplicación, instalar dependencias, etc.
WORKDIR /app

#Copio los archivos package.json y package-lock,son(el asterisco si exsite) en el raíz de mi directorio de trabajo, /app.
COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]

ENV NODE_ENV=production

#Instalo las dependencias de mi aplicación, ejecutando el comando npm install
RUN npm install 

#Copio el resto de los archivos en el directorio /app
COPY . .

# RUN npm test

#Añado como metadato el puerto por el que escucha mi aplicación
EXPOSE 3000

#Añado otro metadato más que es qué comando se ejecutará cuando se genere un contenedor de esta imagen
CMD ["npm", "start"]