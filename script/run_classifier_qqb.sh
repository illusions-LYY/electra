#!/usr/bin/env bash

CURRENT_DIR=`pwd`
export DATA_DIR=$CURRENT_DIR/dataset/finetuning_data
export MODEL_DIR=$CURRENT_DIR/pretrained_models/electra_base

python -u run_finetuning.py \
    --data-dir $DATA_DIR \
    --model-path $MODEL_DIR \
    --model-name electra_base \
    --hparams '{"model_size": "base", "task_names": ["qqb"]}'