FROM nginx:latest

# Installation de file
RUN apt-get update && apt-get install -y file

# Création du répertoire pour le site
RUN mkdir -p /var/concentration/html

# Copier les fichiers du site et de la conf
COPY html/ /var/concentration/html/
COPY conf/nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
