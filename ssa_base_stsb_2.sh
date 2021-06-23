#!/usr/bin/env bash

#MRPC
TASK_NAME=STS-B
CONF_FILE=hparams.json

echo "it's: STS-B"
python -u search_hparam.py \
  --task_name=${TASK_NAME} \
  --data_dir=./glue_data \
  --output_dir=./results_final/grid_search3/${TASK_NAME} \
  --bert_model='bert-base-uncased' \
  --ckpt='./ssa_ckpt_base/STS-B/ssa_base' \
  --use_saved=1 \
  --do_first_eval=1 \
  --cls_weight=0.5 \
  --attention_threshold=0.3 \
  --share_weight=1 \
  --conf_file=${CONF_FILE} \
  --available_gpus=7 \
  --need_gpus=1 \
"$@"
