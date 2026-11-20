# Application Flask minimale
from flask import Flask

# Création de l'application
app = Flask(__name__)

# Route principale : page d'accueil
@app.route("/")
def home():
    return "Hello DevOps - Docker CI Pipeline!"

# Lancement du serveur (host 0.0.0.0 pour être accessible depuis Docker)
if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)