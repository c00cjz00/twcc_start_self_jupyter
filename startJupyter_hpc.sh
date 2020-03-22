#!/bin/bash
ps auxww |grep jupyter  |grep 12345 | awk '{print $2}' | xargs kill -9
sleep 1
source ~/miniconda3/bin/activate fastai_gpu
~/miniconda3/envs/fastai_gpu/bin/jupyter notebook \
--config ~/.myconfig/jupyter/jupyter_notebook_config.py \
--notebook-dir=$HOME \
--port=12345 &


