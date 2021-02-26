#!/usr/bin/bash
#SBATCH --job-name example_xsede_cpu_job
#SBATCH --account ccr180012p
#SBATCH --time=01:00:00
#SBATCH --nodes=1 
#SBATCH --ntasks=24
#SBATCH --mem=128GB
#SBATCH -p EM

date 
module load python
cd $HOME
pwd
echo 'Running slrum jobs'
date
