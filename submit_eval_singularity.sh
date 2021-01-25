#!/bin/bash
#
#SBATCH -p hpc-bio-lejeune
#SBATCH --chdir=/home/alumno02/lab3-container
#SBATCH -J k-mers
#SBATCH --cpus-per-task=26
#SBATCH --mail-type=NONE    #END/START/NONE
#SBATCH --mail-user=MAIL@um.es

echo Midiendo el tiempo de ejecucion de los programas k-mer.cpp lanzando Singularity
echo
time ./python_latest.sif ./k-mer13 & ./k-mer14
echo
echo Midiendo el tiempo de jecucion para los programas k.mer.py lanzando Singularity
echo
time ./python_latest.sif ./k-mer13.py & ./k-mer14.py