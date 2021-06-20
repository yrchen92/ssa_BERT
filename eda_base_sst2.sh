#!/usr/bin/env bash
TASK_NAME=SST-2
CONF_FILE=hparams.json

echo "it's: SST-2"
python -u search_hparam.py \
  --task_name=${TASK_NAME} \
  --data_dir=./eda_glue_data \
  --output_dir=./results_final/grid_search2/${TASK_NAME} \
  --bert_model='bert-base-uncased' \
  --max_seq_length=64 \
  --only_bert=1 \
  --conf_file=${CONF_FILE} \
  --available_gpus=0,1,2,3,4,5,6,7 \
  --need_gpus=1 \
"$@"