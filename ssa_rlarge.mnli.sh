#!/usr/bin/env bash

#MRPC
TASK_NAME=MNLI
CONF_FILE=hparams.json

echo "it's: MNLI"
python -u Roberta/search_hparam_r.py \
  --task_name=${TASK_NAME} \
  --data_dir=./glue_data \
  --output_dir=./results_final/rlarge/${TASK_NAME} \
  --model_name_or_path='roberta-large' \
  --ckpt='./ssa_ckpt_r_large/MNLI/ssa_base' \
  --use_saved=1 \
  --max_seq_length=128 \
  --do_first_eval=0 \
  --cls_weight=0.2 \
  --attention_threshold=0.3 \
  --share_weight=1 \
  --conf_file=${CONF_FILE} \
  --available_gpus=7 \
  --need_gpus=1 \
"$@"
