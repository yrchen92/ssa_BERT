#!/usr/bin/env bash

#CoLA
echo "it's: CoLA"
echo
echo
CUDA_VISIBLE_DEVICES=7 python -u run_ssa.py \
  --task_name='CoLA' \
  --data_dir=./eda_glue_data \
  --output_dir='./results_final/base' \
  --bert_model='bert-base-uncased' \
  --ckpt='./ssa_ckpt_base/CoLA/ssa_base' \
  --only_bert=1 \
  --do_first_eval=0 \
  --cls_weight=0.999 \
  --attention_threshold=0.3 \
  --share_weight=1 \
"$@"