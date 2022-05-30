#!/bin/bash

#SBATCH --job-name=pixmatch_cityscapes_iter_buffer_tm
#SBATCH --gres=gpu:1
#SBATCH -o slurm.out
#SBATCH --time=14-0


source /data/seunan/init.sh
conda activate torch38gpu

HYDRA_FULL_ERROR=1 python main.py --config-name=gta5 name=gta52city
