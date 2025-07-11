# Image de base officielle
FROM node:20

# Dossier de travail
WORKDIR /app

# Copier package.json
COPY app/package.json .

# Installer dépendances
RUN npm install

# Copier le reste de l’app
COPY app .

# Lancer l’app
CMD ["npm", "start"]
