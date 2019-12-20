#! /bin/bash -e

function help() {
    echo "Commands: "
    echo "   up"
    echo "    => start.sh up "
    echo 
    echo "   cleanup"
    echo "    => start.sh cleanup"
    echo 
    echo "   build"
    echo "    => start.sh build <version>"
}

function up() {
    docker-compose up -d --build
}

function cleanup() {
    docker rm -f $(docker ps -aq)
    rm -rf db
} 

function build() {
    if [ "$#" != "1" ]; then 
        echo "version value needed."
        exit
    fi 
    docker build docker --tag jskim/python:${1} --tag jskim/python:latest
}

case $1 in
    up) up ;;  
    cleanup) cleanup ;;
    build) shift; build "$@";;
    *) help ;
esac 