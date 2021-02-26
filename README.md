# Example slrum job scripts

Example slurm scripts for [BMBL](https://u.osu.edu/bmbl/) users.

## OSC

1. Login [OSC OnDemand](https://ondemand.osc.edu/pun/sys/dashboard)
2. Navigate tabs and open Slrum shell access:![Slrum tab](./img/tab-open-slrum.png)

## XSEDE

SSH to XSEDE bridges2 :

```{shell}
ssh username@bridges2.psc.xsede.org
```

You can check project usage information by:

```{shell}
projects
```
## Submit a job

Clone this GitHub repository at your home directory:

```{shell}
cd ~
git clone https://github.com/Wang-Cankun/example_slrum_bmbl.git
cd example_slrum_bmbl

```
Submit A slrum job
   
```{shell}
sbatch example_job_slrum.sh 
```

Check your job status

```
squeue -u username
```

Cancel all your jobs

```
scancel -u username
```

When the example job finished, there should be a output file named slrum-###.out that prints the following
   
```{shell}
Wed Dec  2 11:49:50 EST 2020
Running slrum jobs
Wed Dec  2 11:49:50 EST 2020
```
## How to start an interactive job?

### OSC-CPU
```
salloc --nodes=1 --ntasks=8 --mem=64GB --account PCON0022 --time=1:00:00 srun --pty /bin/bash
```
### OSC-GPU
```
salloc --nodes=1 --ntasks=8 --mem=64GB --account PCON0022 --gpus-per-node=1 --time=1:00:00 srun --pty /bin/bash
```

### XSEDE-CPU

Not supported on XSEDE-CPU:
**salloc: error: Interactive usage is not permitted in partition EM**
<!--
```
#salloc -p EM --nodes=1 --mem=128GB --ntasks=8 --account ccr180012p --time=1:00:00 srun --pty /bin/bash
```
-->
### XSEDE-GPU
```
salloc -p GPU --nodes=1 --ntasks=8 --account ccr180012p --gpus=8 --time=1:00:00 srun --pty /bin/bash
```

## Other headers

Send email notification

```{bash}
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user=cankun.wang@osumc.edu
```

Set output file format
```{bash}
#SBATCH --output=filemover_%j.log
```

## Reference

- More information about [slrum job submission](https://www.osc.edu/supercomputing/batch-processing-at-osc/job-submission)

- [Slurm documentation page](https://www.osc.edu/supercomputing/knowledge-base/slurm_migration)

## Author

[Cankun Wang](https://github.com/Wang-Cankun)
