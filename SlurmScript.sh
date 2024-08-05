#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --gpus=1
#SBATCH --mem-per-cpu=4000M
#SBATCH --time=0-01:00:00
# Usage: sbatch $0


salloc --gres=gpu:1
module purge
module load StdEnv/2020 gcc/9.3.0 cuda/11.4 openmpi/4.0.3
module load python/3.8.10 openmm/7.7.0 netcdf/4.7.4 hdf5/1.10.6 mpi4py/3.0.3
source $HOME/env-parmed/bin/activate
export OMP_NUM_THREADS=4

python Test2.py