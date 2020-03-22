# SETUP
### Step1. Start a new TWCC env (Example: tensorflow or pytorch)
### Step2. Put startJupyter.sh and startJupyter.ipynb in your home directory (Example: /home/c00cjz00)
### Step3. Edit startJupyter.sh and cange your conda env (below)
vi ~/startJupyter.sh
source ~/miniconda3/bin/activate fastai_gpu
~/miniconda3/envs/fastai_gpu/bin/jupyter notebook \
--config /etc/jupyter/jupyter_notebook_config.py \
--notebook-dir=$HOME \
--ip=0.0.0.0 \
--port=8888 &
### Step4. Now your can drop off this TWCC env

# Start a new TWCC rnv
### Step1. Start a new TWCC env (Example: tensorflow or pytorch)
### Step2. Open the ~/startJupyter.ipynb with jupyter notebook
### Step3. Run it, and it will start up a new jupyter notebook based on your conda env

