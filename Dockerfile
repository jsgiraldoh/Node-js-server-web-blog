# Esta línea indica la imagen Docker base a utilizar para nuestro contenedor
# Una imagen UNIX con nodejs instalado
FROM node:carbon
# Indicamos el directorio de trabajo para los siguientes comandos
WORKDIR /usr/src/app
# A continuación, copiará todo lo que tenemos en nuestro directorio actual dentro del contenedor
# (todo el código de Javascript)
COPY . .
# Entonces, se ejecutará "npm install" para obtener todos los módulos del nodo e
# incluirlos en la imagen (cargada previamente).
RUN npm install
# Para poder interactuar con la web deberá exponer un puerto, en este caso el 8080.
EXPOSE 8080
# Finalmente, para ejecutar la imagen deberá ejecutar también el servidor web. Para
# ello, tendrá que indicarle que ejecute el comando "npm start".
CMD ["npm", "start"]
