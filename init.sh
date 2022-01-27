#!/bin/bash

#Colours
declare -r greenColour="\e[0;32m\033[1m"
declare -r endColour="\033[0m\e[0m"
declare -r redColour="\e[0;31m\033[1m"
declare -r blueColour="\e[0;34m\033[1m"
declare -r yellowColour="\e[0;33m\033[1m"
declare -r purpleColour="\e[0;35m\033[1m"
declare -r turquoiseColour="\e[0;36m\033[1m"
declare -r grayColour="\e[0;37m\033[1m"


# Check if services are running
# Kibana

echo -e "\n${redColour}[!] Intentando parar los servicios antes de comenzar :${endColour}"
docker-compose -f ./docker-kibana/kibana-compose.yml stop 1>/dev/null 2>&1
docker-compose -f ./docker-moodle/moodle-compose.yml stop 1>/dev/null 2>&1
docker-compose -f ./docker-nginx/nginx-compose.yml stop 1>/dev/null 2>&1
docker-compose -f ./docker-opencast/opencast-compose.yml stop 1>/dev/null 2>&1
#! No hacemos down, para eso, utilizar ./prune-all.sh
echo -e "${greenColour}[:)] Parados!${endColour}"
echo -e "${redColour}[!] Arrancando los servicios de forma secuencial${endColour}\n"

echo -e "${purpleColour}[-] Starting Nginx service ...${endColour}"
# docker-compose -f ./docker-nginx/nginx-compose.yml start 1>/dev/null 2>&1
echo -e "${greenColour}[:)] Nginx service up!${endColour}"

echo -e "\n"

echo -e "${purpleColour}[-] Opencast Service up! ${endColour}"
# docker-compose -f ./docker-opencast/opencast-compose.yml start 1>/dev/null 2>&1
echo -e "${greenColour}[:)] Opencast service up!${endColour}"

echo -e "\n"

echo -e "${purpleColour}[-] Moodle Service up! ${endColour}"
# docker-compose -f ./docker-moodle/moodle-compose.yml start 1>/dev/null 2>&1
echo -e "${greenColour}[:)] Moodle service up!${endColour}"

# echo -e "\n"

#OPTIONAL KIBANA
# echo -e "\n${purpleColour}[-] Kibana Service up! ${endColour}\n"