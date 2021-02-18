#!/usr/bin/bash
#SBATCH --job-name example_slurm_job
#SBATCH --account PCON0022
#SBATCH --time=01:00:00
#SBATCH --nodes=1 
#SBATCH --ntasks=8
#SBATCH --mem=8GB

date 
module load python/3.6
cd $HOME
pwd
echo 'Running slrum jobs'
date
