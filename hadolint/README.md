# Hadolint

Hadolint analyse vos Dockerfiles et détecte automatiquement les erreurs, les failles de sécurité et les mauvaises pratiques. Basé sur les recommandations officielles de Docker, il identifie les problèmes comme les versions non épinglées (DL3008), les pipes sans pipefail (DL4006) ou l'utilisation de latest (DL3007). Intégrable en CI/CD, il bloque les builds non conformes avant le déploiement.

Lorsqu’un Dockerfile est analysé, Hadolint renvoie une liste de recommandations classées par gravité. Chaque erreur est associée à un code spécifique qui permet de comprendre et corriger le problème

# Exclure certaines règles

Si une règle n’est pas pertinente pour un projet, on peut l’ignorer avec :

```
hadolint --ignore DL3008 Dockerfile
```

Ou ajouter un commentaire directement dans le Dockerfile :

```
# hadolint ignore=DL3008
RUN apt-get install -y curl
```

# Install

```
brew install hadolint
```

or

```
wget https://github.com/hadolint/hadolint/releases/latest/download/hadolint-Linux-x86_64
chmod +x hadolint-Linux-x86_64
sudo mv hadolint-Linux-x86_64 /usr/local/bin/hadolint
```

# Usage

hadolint 