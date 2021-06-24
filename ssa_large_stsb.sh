#!/usr/bin/env bash

#MRPC
TASK_NAME=STS-B
CONF_FILE=hparams.json

echo "it's: MNLI"
python -u search_hparam.py \
  --task_name=${TASK_NAME} \
  --data_dir=./glue_data \
  --output_dir=./results_final/large/${TASK_NAME} \
  --bert_model='bert-large-uncased' \
  --ckpt='./results/wbert_l' \
  --use_saved=1 \
  --max_seq_length=128 \
  --do_first_eval=0 \
  --cls_weight=0.2 \
  --attention_threshold=0.1 \
  --share_weight=1 \
  --conf_file=${CONF_FILE} \
  --available_gpus=0,1,2,3,4,5,6,7 \
  --need_gpus=4 \
"$@"
