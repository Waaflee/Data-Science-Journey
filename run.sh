#!/bin/zsh

docker run --rm --gpus all -it \
    -p 8888:8888 \
    -p 6007:6007 \
    -p 6008:6008 \
    -e TF_CPP_MIN_LOG_LEVEL=3 \
    -v $PWD/data:/tf/data \
    -e TF_FORCE_GPU_ALLOW_GROWTH=true \
    -e TF_GPU_ALLOCATOR=cuda_malloc_async \
    --name jupyter \
    tensorflow/tensorflow:latest-gpu-jupyter