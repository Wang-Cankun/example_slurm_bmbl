#!/usr/bin/bash
#PBS -N example_pbs_job
#PBS -A PCON0022
#PBS -l walltime=01:00:00
#PBS -l nodes=1:ppn=8:gpus=1
#PBS -l mem=8GB

date
module load python/3.6
cd $HOME
pwd
echo 'Running PBS jobs'
date
