#!/bin/bash

mkdir ./pretrained
mkdir ./pretrained/init
mkdir ./data
mkdir ./log
conda create -n textseg python=3.7 -y
conda activate textseg
pip install -r requirement.txt
gdown -O  pretrained/texrnet_hrnet.pth --id  1GQp1lf1-UbVYiESbMEw-XYQmTUQbXYl0
python inference.py --input test/test_image.jpg --output test_output/test_out.jpg
