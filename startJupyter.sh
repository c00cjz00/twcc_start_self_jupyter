#!/bin/bash

## 停止原生 TWCC JUPYTER NOTEBOOK
FILE=/run_jupyter.sh
FILEBK=/run_jupyter.sh.backup
if test -f "$FILE"; then
    echo "$FILE exist"
    sudo -i mv $FILE $FILEBK
fi
ps auxww |grep jupyter  | awk '{print $2}' | xargs kill -9
ps auxww |grep jupyter  | awk '{print $2}' | xargs sudo -i kill -9
sleep 1

## 啟動自己的 JUPYTER NOTEBOOK
source ~/miniconda3/bin/activate fastai_gpu
~/miniconda3/envs/fastai_gpu/bin/jupyter notebook \
--config /etc/jupyter/jupyter_notebook_config.py \
--notebook-dir=$HOME \
--ip=0.0.0.0 \
--port=8888 &


