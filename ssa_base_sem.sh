#!/usr/bin/env bash

#MRPC
TASK_NAME=semeval
CONF_FILE=hparams_sem.json

echo "it's: ${TASK_NAME}"
python -u search_hparam.py \
  --data_dir=./absa_data/semeval2014/bert-pair/ \
  --output_dir=./results_final/absa/${TASK_NAME} \
  --bert_model='bert-base-uncased' \
  --ckpt='./results/bert_model' \
  --use_saved=1 \
  --do_first_eval=0 \
  --cls_weight=0.9 \
  --aug_loss_weight=0.1 \
  --attention_threshold=0.3 \
  --share_weight=1 \
  --conf_file=${CONF_FILE} \
  --available_gpus=0,1,2,3,4,5,6,7,8 \
  --need_gpus=1 \
"$@"
