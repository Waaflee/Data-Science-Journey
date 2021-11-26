FROM tensorflow/tensorflow:latest-gpu-jupyter

ENV JUPYTER_ENABLE_LAB=yes

WORKDIR /usr/app

CMD jupyter-lab --no-browser --allow-root --notebook-dir=/workspace --port=8888 --ip=0.0.0.0 --NotebookApp.token='' --NotebookApp.password=''