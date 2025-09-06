#!/bin/bash

# -----------------------------------------------------------------------------
# Tarea #01 - Sistemas Operativos 1
# Script para simular la creación de contenedores aleatorios.
#
# Carnet: 202111277
# -----------------------------------------------------------------------------
 
CARNET="202111277"


#  Generar un número aleatorio de archivos a crear
NUM_ARCHIVOS=$(( (RANDOM % 4) + 1 ))

echo "Iniciando simulación..."
echo "Se crearán $NUM_ARCHIVOS contenedores"
echo "--------------------------------------------------"

# Iniciar un bucle que se repetirá el número de veces generado aleatoriamente.
for i in $(seq 1 $NUM_ARCHIVOS)
do
  #  Generar un nombre aleatorio para el archivo
  NOMBRE_ALEATORIO=$RANDOM

  # Construir el nombre completo del archivo usando el formato requerido
  NOMBRE_ARCHIVO="contenedor_${CARNET}_${NOMBRE_ALEATORIO}.txt"

  # Crear el archivo y, al mismo tiempo, incluir su propio nombre como contenido
  #    El comando 'echo' imprime el valor de la variable $NOMBRE_ARCHIVO,
  #    y el operador de redirección '>' crea el archivo y escribe el texto en él.
  echo "$NOMBRE_ARCHIVO" > "$NOMBRE_ARCHIVO"

  echo " -> Contenedor creado: $NOMBRE_ARCHIVO"
done

echo "--------------------------------------------------"
echo "Simulación finalizada."

