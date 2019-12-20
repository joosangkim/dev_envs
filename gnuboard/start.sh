#! /bin/bash

function help() {
    echo "Commands: "
    echo "   up"
    echo "    => start.sh up "
    echo 
    echo "   cleanup"
    echo "    => start.sh cleanup"
}

function up() {
    docker-compose up -d --build
}

function cleanup() {
    docker rm -f $(docker ps -aq)
    rm -rf db
} 


case $1 in
    up) up ;;  
    cleanup) cleanup ;;
    *) help ;
esac 