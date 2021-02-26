#!/usr/bin/bash
#SBATCH --job-name example_job_osc_cpu
#SBATCH --account PCON0022
#SBATCH --time=01:00:00
#SBATCH --nodes=1 
#SBATCH --ntasks=8
#SBATCH --mem=64GB

date 
module load python
cd $HOME
pwd
echo 'Running slrum jobs'
date
