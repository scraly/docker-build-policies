# docker-build-policies

Le moteur de build parse le Dockerfile → il affiche COPY . .
Le moteur de policy reçoit ensuite des inputs résolus (input.local, input.image, input.http, etc.) pour les valider avant exécution.

## Debug policy failures

`$ docker buildx build --progress=plain .`

This shows all policy checks, the input data for each source, and allow/deny decisions. For complete debugging guidance, see Debugging.



