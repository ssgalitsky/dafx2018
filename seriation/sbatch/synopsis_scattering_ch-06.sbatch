#!/bin/bash

#BATCH --job-name=synopsis_scattering_ch-06
#SBATCH --nodes=1
#SBATCH --tasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --time=01:00:00
#SBATCH --mem=8GB
#SBATCH --output=synopsis_scattering_ch-06_%j.out

module purge
module load matlab/2017a

matlab -nosplash -nodesktop -nodisplay -r "channel_id = 06; run('../synopsis_scattering.m');"