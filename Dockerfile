FROM nginx:latest
COPY index.html /usr/share/nginx/html/index.html
COPY style.css /usr/share/nginx/html/style.css

# Usa una imagen base de OpenJDK
FROM openjdk:11-jdk-slim

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia el archivo JAR del proyecto al contenedor
COPY target/SemestralYGG-1.0-SNAPSHOT.jar /app/SemestralYGG.jar

# Expone el puerto 8081
EXPOSE 8081

# Ejecuta la aplicación Java
CMD ["java", "-jar", "SemestralYGG.jar"]
