MODEL_PATH="/home/ubuntu/models/krikri-annealing-dpo-mixed"
MODEL_NAME="krikri-annealing-dpo-mixed-run1"
NUM_GPUS=8
MAX_MODEL_LEN=8192

vllm serve $MODEL_PATH \
  --served-model-name $MODEL_NAME \
  --tensor-parallel-size $NUM_GPUS \
  --max-model-len $MAX_MODEL_LEN \
  --max-num-batched-tokens $MAX_MODEL_LEN \
  --enforce-eager \
  --dtype auto \
  --api-key token-abc123