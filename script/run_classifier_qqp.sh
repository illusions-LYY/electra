#!/usr/bin/env bash

export CUDA_VISIBLE_DEVICES=4,5
CURRENT_DIR=`pwd`
export DATA_DIR=$CURRENT_DIR/dataset
export MODEL_DIR=$CURRENT_DIR/pretrained_models/electra_base

python -u run_finetuning.py \
    --data-dir $DATA_DIR \
    --model-path $MODEL_DIR \
    --model-name electra_base \
    --hparams '{"model_size": "base", "task_names": ["qqp"]}'
