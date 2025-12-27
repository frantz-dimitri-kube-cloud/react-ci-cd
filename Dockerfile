# Build de l'application React
FROM node:18-alpine AS build
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# Serveur de production (Nginx)
FROM nginx:stable-alpine
# On copie les fichiers buildés precedemment dans le dossier Nginx
COPY --from=build /app/dist /usr/share/nginx/html
# On copie le fichier de configuration Nginx
# COPY nginx.conf /etc/nginx/conf.d/default.conf
# Exposition du port 80
EXPOSE 80
# Démarrage de Nginx
CMD ["nginx", "-g", "daemon off;"]