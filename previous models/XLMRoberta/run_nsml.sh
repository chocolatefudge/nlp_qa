#!/usr/bin/env bash

nsml run \
  -m 'kaist korquad open' \
  -d korquad-open-ldbd \
  -g 1 \
  -c 1 \
  -e run_squad.py \
  -a "--model_type xlmroberta
    --model_name_or_path xlm-roberta-large
    --do_train
    --do_eval
    --data_dir train
    --num_train_epochs 10
    --per_gpu_train_batch_size 8
    --per_gpu_eval_batch_size 8
    --output_dir output
    --overwrite_output_dir
    --logging_steps 300
    --version_2_with_negative"
