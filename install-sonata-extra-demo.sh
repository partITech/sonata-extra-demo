#!/bin/bash

# Nom du fichier : install_project.sh

# Variables
REPO_URL="git@github.com:partITech/sonata-extra-demo.git"
PROJECT_DIR="sonata-extra-demo"
BRANCH="main"

# Couleurs et texte en gras
BOLD="\033[1m"
RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
BLUE="\033[34m"
NC="\033[0m" # No Color

# Fonction pour afficher les messages en couleur
function echo_color() {
  COLOR=$1
  MESSAGE=$2
  echo -e "${COLOR}${MESSAGE}${NC}"
}

echo_color $BLUE "${BOLD}Stopping Docker containers...${NC}"
docker ps -q | xargs docker stop





if [ -d "$PROJECT_DIR" ]; then
  TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
  echo_color $YELLOW "${BOLD}Le dossier $PROJECT_DIR existe déjà. Renommage en ${PROJECT_DIR}_$TIMESTAMP...${NC}"
  mv "$PROJECT_DIR" "${PROJECT_DIR}_$TIMESTAMP"
fi

echo_color $GREEN "${BOLD}Cloning repository: $REPO_URL...${NC}"
git clone $REPO_URL
cd "$PROJECT_DIR"



echo_color $GREEN "${BOLD}Checking out branch: $BRANCH...${NC}"
git checkout $BRANCH

echo_color $BLUE "${BOLD}Starting Docker...${NC}"
docker-compose  up -d

# Attente de 5 secondes après le lancement de Docker
echo_color $YELLOW "${BOLD}Attente de 15 secondes pour laisser Docker démarrer...${NC}"
sleep 15


echo_color $YELLOW "${BOLD}Copying .env file...${NC}"
cp env.dist .env

echo_color $YELLOW "${BOLD}Loading the default database...${NC}"
docker compose exec -T www mysql -h db -u root -ptoor sonata-extra-demo < sonata-extra-demo.sql


echo_color $GREEN "${BOLD}Installing PHP Dependencies...${NC}"
docker compose exec -T www composer install

echo_color $YELLOW "${BOLD}Installing Frontend Assets...${NC}"
#docker compose exec -T www symfony console sonata:extra:install-gutenberg
#docker compose exec -T www symfony console ckeditor:install --tag=4.19.0
#docker compose exec -T www symfony console asset:install

echo_color $BLUE "${BOLD}Setting up Sonata and fixing routes...${NC}"
docker compose exec -T www symfony console sonata:page:create-site --enabled --name France --relativePath /fr --host localhost --enabledFrom now --enabledTo 2030-10-18 --locale fr --default --no-confirmation
docker compose exec -T www symfony console sonata:page:create-site --enabled --name English --relativePath /en --host localhost --enabledFrom now --enabledTo 2030-10-18 --locale en --no-confirmation
docker compose exec -T www symfony console sonata:page:update-core-routes
docker compose exec -T www symfony console sonata:extra:page-fix-route
docker compose exec -T www symfony console sonata:page:create-snapshots

echo_color $GREEN "${BOLD}Creating Admin User and setting up password...${NC}"
docker-compose exec www php bin/console sonata:user:create --super-admin admin your@email.com demo

echo_color $BLUE "${BOLD}Opening admin and front pages in browser...${NC}"
google-chrome --new-window --window-size=960,540 --app=http://localhost/fr/admin/login
google-chrome --new-window --window-size=540,540 --app=http://localhost/

echo_color $GREEN "${BOLD}Installation terminée.${NC}"


