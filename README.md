# example_osc_slrum

## Why should I test my job in Slurm environment?

Slurm has a completely different command line interface from Torque/Moab, which is the current job scheduler and resource manager used on Owens. OSC has been working on compatibility scripts to ensure that the transition goes as smoothly as possible, but users should expect that some things may not work exactly the same.

## How to test my Owens job in Slurm environment? 

1. Login [OSC OnDemand](https://ondemand.osc.edu/pun/sys/dashboard)
2. Navigate tabs and open Slrum shell access:![Slrum tab](./img/tab-open-slrum.png)
3. Clone this GitHub repository at your home directory:
	```
	cd ~
	git clone https://github.com/Wang-Cankun/example_osc_slrum.git
	cd example_osc_slrum

	```
4. Submit A slrum job
   
	 ```
	 sbatch example_job_slrum.sh 
	 ```

5. When the example job finished, there should be a output file named slrum-###.out that prints the following
   
	 ```
	 	Wed Dec  2 11:49:50 EST 2020
		/users/PAS1475/YOUR_USER_NAME
		Running slrum jobs
		Wed Dec  2 11:49:50 EST 2020
	 ```

	 
Note: 

You can log into Owens in the Slurm environment via SSH to one of the following hostnames: owens-slurm.osc.edu or owens-login03.hpc.osc.edu. You can also select '>_Owens SLURM Shell Access' under 'Clusters' with OSC OnDemand tool. 

After logging in, please submit your jobs as you currently do on Owens (OSC has enabled PBS compatibility layer so your current PBS batch scripts likely still work in Slurm). If it does not work, your workflow will probably fail after the official Slurm migration. Please check our (Slurm documentation page)[https://www.osc.edu/supercomputing/knowledge-base/slurm_migration]


