CACHE_DIR="/opt/dlami/nvme/.cache"
BASE_MODEL_PATH="/home/ubuntu/models"

#MODEL_PATH="$BASE_MODEL_PATH/krikri-annealing-sft-mixed-bf16"
#MODEL_NAME="krikri-annealing-sft-mixed-run1"
#MODEL_PATH="$BASE_MODEL_PATH/krikri-annealing-sft-stage2"
#MODEL_NAME="krikri-annealing-sft-stage2-run4"
#MODEL_PATH="CohereForAI/aya-expanse-32b"
#MODEL_NAME="aya-expanse-32b"
#MODEL_PATH="$BASE_MODEL_PATH/krikri-annealing-dpo-max"
#MODEL_NAME="krikri-annealing-sft-stage2-dpo_max-run4"
#MODEL_PATH="$BASE_MODEL_PATH/meltemi-annealing-sft-run5"
#MODEL_NAME="meltemi-annealing-sft-run5"
#MODEL_PATH="$BASE_MODEL_PATH/krikri-annealing-dpo-max-epoch-1"
#MODEL_NAME="krikri-annealing-sft-stage2-dpo_max-epoch-1-run4"
#MODEL_PATH="google/gemma-2-27b-it"
#MODEL_NAME="gemma-2-27b-it"

#MODEL_PATH="$BASE_MODEL_PATH/krikri-annealing-dpo-min"
#MODEL_NAME="krikri-annealing-sft-stage2-dpo_min-run4"
#MODEL_PATH="$BASE_MODEL_PATH/krikri-annealing-dpo-min-epoch-1"
#MODEL_NAME="krikri-annealing-sft-stage2-dpo_min-epoch-1-run4" # WITHOUT PROMPT CACHING
#MODEL_PATH="$BASE_MODEL_PATH/krikri-annealing-dpo-max-length-norm"
#MODEL_NAME="krikri-annealing-sft-stage2-dpo_max-length-norm-run4"
#MODEL_PATH="$BASE_MODEL_PATH/krikri-annealing-dpo-min-length-norm"
#MODEL_NAME="krikri-annealing-sft-stage2-dpo_min-length-norm-run4" # WITHOUT PROMPT CACHING
#MODEL_PATH="$BASE_MODEL_PATH/krikri-annealing-dpo-max-length-norm-dpo-fixes"
#MODEL_NAME="krikri-annealing-sft-stage2-dpo_max-length-norm-fixes_on_policy"
#MODEL_PATH="$BASE_MODEL_PATH/krikri-annealing-dpo-max-length-norm-dpo-fixes/checkpoint-1560"
#MODEL_NAME="krikri-annealing-sft-stage2-dpo_max-length-norm-fixes_on_policy-checkpoint-1560"
#MODEL_PATH="$BASE_MODEL_PATH/krikri-annealing-dpo-max-length-norm-dpo-fixes-length-norm"
#MODEL_NAME="krikri-annealing-sft-stage2-dpo_max-length-norm-dpo-fixes-length-norm"
#MODEL_PATH="$BASE_MODEL_PATH/krikri-annealing-sft-stage2-dpo_max-length-norm-dpo-fixes_off_policy-length-norm"
#MODEL_NAME="krikri-annealing-sft-stage2-dpo_max-length-norm-dpo-fixes_off_policy-length-norm"
#MODEL_PATH="$BASE_MODEL_PATH/krikri-annealing-dpo-max-length-norm-dpo-fixes-length-norm-round-2"
#MODEL_NAME="krikri-annealing-dpo-max-length-norm-dpo-fixes-length-norm-round-2"
#MODEL_PATH="$BASE_MODEL_PATH/krikri-annealing-dpo-max-length-norm-dpo-fixes-length-norm-round-1-low-lr"
#MODEL_NAME="krikri-annealing-dpo-max-length-norm-dpo-fixes-length-norm-round-1-low-lr"
#MODEL_PATH="$BASE_MODEL_PATH/krikri-annealing-sft-stage2-merge-dpo-max-length-norm-dpo-fixes-length-norm_0.4-dpo_min_0.3dpo_max-length-norm-fixes_on_policy-checkpoint-1560_0.3-dare_tie"
#MODEL_NAME="krikri-annealing-sft-stage2-merge-dpo-max-length-norm-dpo-fixes-length-norm_0.4-dpo_min_0.3dpo_max-length-norm-fixes_on_policy-checkpoint-1560_0.3-dare_tie"
#MODEL_PATH="$BASE_MODEL_PATH/krikri-annealing-sft-stage2-merge-dpo-max-length-norm-dpo-fixes-length-norm_0.45-dpo_min_0.55-dare_tie"
#MODEL_NAME="krikri-annealing-sft-stage2-merge-dpo-max-length-norm-dpo-fixes-length-norm_0.45-dpo_min_0.55-dare_tie"
# MODEL_PATH="$BASE_MODEL_PATH/krikri-annealing-sft-stage2-merge-dpo-max-length-norm-dpo-fixes-length-norm_0.55-dpo_min_0.45-dare_tie"
# MODEL_NAME="krikri-annealing-sft-stage2-merge-dpo-max-length-norm-dpo-fixes-length-norm_0.55-dpo_min_0.45-dare_tie"

MODEL_PATH="$BASE_MODEL_PATH/krikri-annealing-dpo-max-length-norm-dpo-fixes-length-norm-round-3-with-IF-final-checkpoint"
MODEL_NAME="krikri-annealing-dpo-max-length-norm-dpo-fixes-length-norm-round-3-with-IF-final-checkpoint"
# MODEL_PATH="$BASE_MODEL_PATH/krikri-annealing-dpo-max-length-norm-dpo-fixes-length-norm-round-3-with-IF-checkpoint-2316"
# MODEL_NAME="krikri-annealing-dpo-max-length-norm-dpo-fixes-length-norm-round-3-with-IF-checkpoint-2316"


NUM_GPUS=4
MAX_MODEL_LEN=8192

vllm serve $MODEL_PATH \
  --served-model-name $MODEL_NAME \
  --tensor-parallel-size $NUM_GPUS \
  --enforce-eager \
  --enable-chunked-prefill False \
  --dtype 'bfloat16' \
  --gpu_memory_utilization 0.94 \
  --api-key token-abc123
  
#  --download-dir $CACHE_DIR
#  --max-model-len $MAX_MODEL_LEN
#  --max-num-batched-tokens $MAX_MODEL_LEN 
