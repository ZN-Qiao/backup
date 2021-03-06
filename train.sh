#!/bin/bash
#SBATCH -J res_352
#SBATCH -o res_352_%j
#SBATCH -p gpu
#SBATCH --qos large
#SBATCH -N 1
#SBATCH -N 1
#SBATCH --gres=gpu:4

module load python/3.7.4
module load pytorch/gpu-1.5.0
module load cuda/101/toolkit/10.1.243

CUDA_VISIBLE_DEVICES=0,1,2,3 python3 ./main.py -a resnet101 ../places365_standard/
