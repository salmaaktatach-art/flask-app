# Image de base : Python 3.10 allégé
FROM python:3.10-slim

# Dossier de travail dans le conteneur
WORKDIR /app

# Copie du fichier des dépendances
COPY requirements.txt .

# Installation des dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Copie de tout le code de l'application
COPY . .

# Port utilisé par Flask
EXPOSE 5000

# Commande de démarrage du conteneur
CMD ["python", "app.py"]