# python run.py \
#     --output_dir=./saved_models_62730 \
#     --data_limit 62729 \
#     --model_type=roberta \
#     --config_name=microsoft/codebert-base \
#     --model_name_or_path=microsoft/codebert-base \
#     --tokenizer_name=roberta-base \
#     --do_train \
#     --train_data_file=./train_java.jsonl \
#     --eval_data_file=./valid_java.jsonl \
#     --epoch 2 \
#     --block_size 512 \
#     --train_batch_size 8 \
#     --gradient_accumulation_steps 4 \
#     --eval_batch_size 64 \
#     --fp16 \
#     --learning_rate 5e-5 \
#     --max_grad_norm 1.0 \
#     --evaluate_during_training \
#     --seed 123456 2>&1| tee train_62730.log \

# python run.py \
#     --output_dir=./saved_models_31365 \
#     --data_limit 31365 \
#     --model_type=roberta \
#     --config_name=microsoft/codebert-base \
#     --model_name_or_path=microsoft/codebert-base \
#     --tokenizer_name=roberta-base \
#     --do_train \
#     --train_data_file=./train_java.jsonl \
#     --eval_data_file=./valid_java.jsonl \
#     --epoch 2 \
#     --block_size 512 \
#     --train_batch_size 8 \
#     --gradient_accumulation_steps 4 \
#     --eval_batch_size 64 \
#     --fp16  \
#     --learning_rate 5e-5 \
#     --max_grad_norm 1.0 \
#     --evaluate_during_training \
#     --seed 123456 2>&1| tee train_31365.log \

python run.py \
    --output_dir=./saved_models_15683 \
    --data_limit 15683 \
    --model_type=roberta \
    --config_name=microsoft/codebert-base \
    --model_name_or_path=microsoft/codebert-base \
    --tokenizer_name=roberta-base \
    --do_train \
    --train_data_file=./train_java.jsonl \
    --eval_data_file=./valid_java.jsonl \
    --epoch 2 \
    --block_size 512 \
    --train_batch_size 8 \
    --gradient_accumulation_steps 4 \
    --eval_batch_size 64 \
    --fp16  \
    --learning_rate 5e-5 \
    --max_grad_norm 1.0 \
    --evaluate_during_training \
    --seed 123456 2>&1| tee train_15683.log \

python run.py \
    --output_dir=./saved_models_7842 \
    --data_limit 7842 \
    --model_type=roberta \
    --config_name=microsoft/codebert-base \
    --model_name_or_path=microsoft/codebert-base \
    --tokenizer_name=roberta-base \
    --do_train \
    --train_data_file=./train_java.jsonl \
    --eval_data_file=./valid_java.jsonl \
    --epoch 2 \
    --block_size 512 \
    --train_batch_size 8 \
    --gradient_accumulation_steps 4 \
    --eval_batch_size 64 \
    --fp16  \
    --learning_rate 5e-5 \
    --max_grad_norm 1.0 \
    --evaluate_during_training \
    --seed 123456 2>&1| tee train_7842.log \

python run.py \
    --output_dir=./saved_models_3921 \
    --data_limit 3921 \
    --model_type=roberta \
    --config_name=microsoft/codebert-base \
    --model_name_or_path=microsoft/codebert-base \
    --tokenizer_name=roberta-base \
    --do_train \
    --train_data_file=./train_java.jsonl \
    --eval_data_file=./valid_java.jsonl \
    --epoch 2 \
    --block_size 512 \
    --train_batch_size 8 \
    --gradient_accumulation_steps 4 \
    --eval_batch_size 64 \
    --fp16  \
    --learning_rate 5e-5 \
    --max_grad_norm 1.0 \
    --evaluate_during_training \
    --seed 123456 2>&1| tee train_3921.log \

python run.py \
    --output_dir=./saved_models_1961 \
    --data_limit 1961 \
    --model_type=roberta \
    --config_name=microsoft/codebert-base \
    --model_name_or_path=microsoft/codebert-base \
    --tokenizer_name=roberta-base \
    --do_train \
    --train_data_file=./train_java.jsonl \
    --eval_data_file=./valid_java.jsonl \
    --epoch 2 \
    --block_size 512 \
    --train_batch_size 8 \
    --gradient_accumulation_steps 4 \
    --eval_batch_size 64 \
    --fp16  \
    --learning_rate 5e-5 \
    --max_grad_norm 1.0 \
    --evaluate_during_training \
    --seed 123456 2>&1| tee train_1961.log \
    


