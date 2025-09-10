#Arrêt et suppression des conteneurs
docker stop $(docker ps) > /dev/null 2>/dev/null
docker rm $(docker ps -aq) > /dev/null 2>/dev/null

#Purge de l'ensemble des éléments (réseaux, volumes, conteneurs, images)
docker system prune --force > /dev/null 2>/dev/null
docker volume prune --force > /dev/null 2>/dev/null
echo "Purge terminée"
