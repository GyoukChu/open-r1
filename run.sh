CUDA_VISIBLE_DEVICES=3 trl vllm-serve --model deepseek-ai/DeepSeek-R1-Distill-Qwen-1.5B

ACCELERATE_LOG_LEVEL=info accelerate launch --config_file recipes/accelerate_configs/zero3.yaml \
     --num_processes=3 src/open_r1/grpo.py \
     --config recipes/DeepSeek-R1-Distill-Qwen-1.5B/grpo/config_demo.yaml
