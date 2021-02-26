#!/usr/bin/bash
#SBATCH --job-name example_xsede_gpu_job
#SBATCH --account ccr180012p
#SBATCH --time=01:00:00
#SBATCH --nodes=1 
#SBATCH --ntasks=24
#SBATCH –-gpus=8
#SBATCH --mem=128GB
#SBATCH -p GPU

#Allocation in partition GPU must request all resources, gpu must = 8

date
module load python
ml cuda
cd $HOME
pwd
echo 'Running slrum jobs - using GPU'
nvidia-smi
date
