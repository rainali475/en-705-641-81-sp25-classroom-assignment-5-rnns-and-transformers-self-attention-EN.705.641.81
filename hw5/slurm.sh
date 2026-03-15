#!/bin/bash
#SBATCH --job-name=gpt
#SBATCH --time=3-0
#SBATCH --mem=50GB
#SBATCH --cpus-per-task=16
#SBATCH --partition=gpu
#SBATCH --gpus=1
#SBATCH --output=gpt.out
#SBATCH --error=gpt.err
#SBATCH --mail-type=FAIL,END
#SBATCH --mail-user=yli493@jhu.edu

module load conda
conda activate ssm_hw5
python main.py
conda deactivate