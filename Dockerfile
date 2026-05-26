# 1. Utilisation d'une image légère basée sur Debian Slim
FROM python:3.11-slim

# 2. Définition du répertoire de travail dans le container
WORKDIR /app

# 3. Copie uniquement les dépendances pour utiliser le cache Docker (optimisation)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. Copie le reste du code source
COPY . .

# 5. Exposition du port de l'application
EXPOSE 5000

# 6. Commande de démarrage
CMD ["python", "app.py"]
