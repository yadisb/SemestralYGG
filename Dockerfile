# Usa una imagen base de OpenJDK
FROM openjdk:11-jdk-slim

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia el archivo JAR del proyecto al contenedor
COPY target/semestralygg-1.0-SNAPSHOT.jar /app/semestralygg.jar

# Expone el puerto 8080
EXPOSE 8080

# Ejecuta la aplicación Java
CMD ["java", "-jar", "semestralygg.jar"]
