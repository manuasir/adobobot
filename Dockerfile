# Imagen base con los binarios de Python basada en debian
FROM python:3.8-slim-buster
# Carpeta raiz en la que vamos a meter los ficheros
WORKDIR /app
# Ejecución de comandos
RUN pip3 install pyTelegramBotAPI mysql-connector-python
# Copia ficheros en la imagen del contenedor
COPY ./src/adobobot.py .

# Copy entrypoint and set permissions
COPY ./docker/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
