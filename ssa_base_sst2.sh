#!/usr/bin/env bash

#MRPC
TASK_NAME=SST-2
CONF_FILE=hparams.json

echo "it's: SST-2"
python -u search_hparam.py \
  --task_name=${TASK_NAME} \
  --data_dir=./glue_data \
  --output_dir=./results_final/base/${TASK_NAME} \
  --bert_model='bert-base-uncased' \
  --ckpt='./ssa_ckpt_base/SST-2/ssa_base' \
  --use_saved=1 \
  --do_first_eval=0 \
  --cls_weight=0.5 \
  --attention_threshold=0.3 \
  --share_weight=1 \
  --conf_file=${CONF_FILE} \
  --available_gpus=0,1,2,3,4,5,6 \
  --need_gpus=1 \
"$@"
