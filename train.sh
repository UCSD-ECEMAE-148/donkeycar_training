#!/bin/bash
dt=$(date '+%Y-%m-%d_%H%M%S')
model="models/model_$dt"
# echo "python3 -c 'print(\"$model\")'"
python train.py --model="$model" --type=linear --tubs=data/