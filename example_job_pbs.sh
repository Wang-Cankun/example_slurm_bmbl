#!/usr/bin/bash
#PBS -N example_pbs_job
#PBS -A PAS1475
#PBS -l walltime=01:00:00
#PBS -l nodes=1:ppn=8:gpus=1
#PBS -l mem=8GB


module load python/3.6
cd $HOME
pwd
echo 'Running PBS jobs'
