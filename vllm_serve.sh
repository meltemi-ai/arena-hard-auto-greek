BASE_MODEL_PATH="/opt/dlami/nvme/models"
MODEL_PATH="$BASE_MODEL_PATH/krikri-annealing-sft-mixed-bf16"
MODEL_NAME="krikri-annealing-sft-mixed-run1"
NUM_GPUS=4
MAX_MODEL_LEN=8192

vllm serve $MODEL_PATH \
  --served-model-name $MODEL_NAME \
  --tensor-parallel-size $NUM_GPUS \
  --max-num-batched-tokens $MAX_MODEL_LEN \
  --enforce-eager \
  --dtype 'bfloat16' \
  --gpu_memory_utilization 0.94 \
  --api-key token-abc123

#  --max-model-len $MAX_MODEL_LEN