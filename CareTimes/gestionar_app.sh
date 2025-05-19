#!/bin/bash

# Iniciar PostgreSQL (si no está corriendo)
echo "Verificando PostgreSQL..."
sudo service postgresql start

# Verificar qué acción se solicita
case "$1" in
  -reinicio)
    echo "Ejecutando reinicio.sql (eliminación de tablas)..."
    psql -U dit -d dit -f BBDD/reinicio.sql
    ;;

  -crear)
    echo "Ejecutando reinicio.sql..."
    psql -U dit -d dit -f BBDD/reinicio.sql

    echo "Ejecutando data.sql (creación e inserción de datos)..."
    psql -U dit -d dit -f BBDD/data.sql
    ;;

  -start)
    echo "Iniciando aplicación Spring Boot..."
    mvn spring-boot:run
    ;;

  *)
    echo "Uso: ./gestionar_app.sh [-reinicio | -crear | -start]"
    echo "  -reinicio : Borra todas las tablas"
    echo "  -crear    : Crea las tablas e inserta datos"
    echo "  -start    : Inicia la aplicación con Spring Boot"
    exit 1
    ;;
esac
