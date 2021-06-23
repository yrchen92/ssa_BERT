#!/usr/bin/env bash

#MRPC
TASK_NAME=sentihood_QA_B
CONF_FILE=hparams_absa.json

echo "it's: ${TASK_NAME}"
python -u search_hparam.py \
  --task_name=${TASK_NAME} \
  --data_dir=./absa_data/sentihood/bert-pair/ \
  --output_dir=./results_final/absa/${TASK_NAME} \
  --bert_model='bert-base-uncased' \
  --ckpt='./ssa_ckpt_base/MNLI/ssa_base' \
  --use_saved=1 \
  --do_first_eval=0 \
  --cls_weight=0.5 \
  --attention_threshold=0.3 \
  --share_weight=1 \
  --conf_file=${CONF_FILE} \
  --available_gpus=0,1,2,3 \
  --need_gpus=1 \
"$@"
