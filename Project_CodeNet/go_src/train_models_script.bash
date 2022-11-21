# python run.py \
#     --output_dir=./saved_models_29556 \
#     --data_limit 29556 \
#     --model_type=roberta \
#     --config_name=microsoft/codebert-base \
#     --model_name_or_path=microsoft/codebert-base \
#     --tokenizer_name=roberta-base \
#     --do_train \
#     --train_data_file=./train_go.jsonl \
#     --eval_data_file=./valid_go.jsonl \
#     --epoch 2 \
#     --block_size 512 \
#     --train_batch_size 8 \
#     --gradient_accumulation_steps 4 \
#     --eval_batch_size 64 \
#     --fp16 \
#     --learning_rate 5e-5 \
#     --max_grad_norm 1.0 \
#     --evaluate_during_training \
#     --seed 123456 2>&1| tee train_29556.log \

# python run.py \
#     --output_dir=./saved_models_15000 \
#     --data_limit 15000 \
#     --model_type=roberta \
#     --config_name=microsoft/codebert-base \
#     --model_name_or_path=microsoft/codebert-base \
#     --tokenizer_name=roberta-base \
#     --do_train \
#     --train_data_file=./train_go.jsonl \
#     --eval_data_file=./valid_go.jsonl \
#     --epoch 2 \
#     --block_size 512 \
#     --train_batch_size 8 \
#     --gradient_accumulation_steps 4 \
#     --eval_batch_size 64 \
#     --fp16  \
#     --learning_rate 5e-5 \
#     --max_grad_norm 1.0 \
#     --evaluate_during_training \
#     --seed 123456 2>&1| tee train_15000.log \

python run.py \
    --output_dir=./saved_models_7500 \
    --data_limit 7500 \
    --model_type=roberta \
    --config_name=microsoft/codebert-base \
    --model_name_or_path=microsoft/codebert-base \
    --tokenizer_name=roberta-base \
    --do_train \
    --train_data_file=./train_go.jsonl \
    --eval_data_file=./valid_go.jsonl \
    --epoch 2 \
    --block_size 512 \
    --train_batch_size 8 \
    --gradient_accumulation_steps 4 \
    --eval_batch_size 64 \
    --fp16  \
    --learning_rate 5e-5 \
    --max_grad_norm 1.0 \
    --evaluate_during_training \
    --seed 123456 2>&1| tee train_7500.log \

python run.py \
    --output_dir=./saved_models_3750 \
    --data_limit 3750 \
    --model_type=roberta \
    --config_name=microsoft/codebert-base \
    --model_name_or_path=microsoft/codebert-base \
    --tokenizer_name=roberta-base \
    --do_train \
    --train_data_file=./train_go.jsonl \
    --eval_data_file=./valid_go.jsonl \
    --epoch 2 \
    --block_size 512 \
    --train_batch_size 8 \
    --gradient_accumulation_steps 4 \
    --eval_batch_size 64 \
    --fp16  \
    --learning_rate 5e-5 \
    --max_grad_norm 1.0 \
    --evaluate_during_training \
    --seed 123456 2>&1| tee train_3750.log \

python run.py \
    --output_dir=./saved_models_1875 \
    --data_limit 1875 \
    --model_type=roberta \
    --config_name=microsoft/codebert-base \
    --model_name_or_path=microsoft/codebert-base \
    --tokenizer_name=roberta-base \
    --do_train \
    --train_data_file=./train_go.jsonl \
    --eval_data_file=./valid_go.jsonl \
    --epoch 2 \
    --block_size 512 \
    --train_batch_size 8 \
    --gradient_accumulation_steps 4 \
    --eval_batch_size 64 \
    --fp16  \
    --learning_rate 5e-5 \
    --max_grad_norm 1.0 \
    --evaluate_during_training \
    --seed 123456 2>&1| tee train_1875.log \

python run.py \
    --output_dir=./saved_models_938 \
    --data_limit 938 \
    --model_type=roberta \
    --config_name=microsoft/codebert-base \
    --model_name_or_path=microsoft/codebert-base \
    --tokenizer_name=roberta-base \
    --do_train \
    --train_data_file=./train_go.jsonl \
    --eval_data_file=./valid_go.jsonl \
    --epoch 2 \
    --block_size 512 \
    --train_batch_size 8 \
    --gradient_accumulation_steps 4 \
    --eval_batch_size 64 \
    --fp16  \
    --learning_rate 5e-5 \
    --max_grad_norm 1.0 \
    --evaluate_during_training \
    --seed 123456 2>&1| tee train_938.log \
    


