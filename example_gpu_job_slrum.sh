#!/usr/bin/bash
#SBATCH --job-name example_slurm_job
#SBATCH --account PAS1475
#SBATCH --time=01:00:00
#SBATCH --nodes=1 
#SBATCH --ntasks=8
#SBATCH --gpus-per-node=1
#SBATCH --mem=8GB

module load python/3.6
cd $HOME
pwd
echo 'Running slrum jobs - using GPU'
