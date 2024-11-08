# Usar una imagen base de Node.js
FROM node:14

# Crear y establecer el directorio de trabajo en el contenedor
WORKDIR /usr/src/app

# Copiar el archivo de aplicación (app.js) y otros archivos necesarios
COPY app.js .

# Instalar las dependencias de Node.js
RUN npm install express

# Exponer el puerto que usará la aplicación
EXPOSE 3000

# Comando para ejecutar la aplicación
CMD ["node", "app.js"]
