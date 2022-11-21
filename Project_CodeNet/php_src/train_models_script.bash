python run.py \
    --output_dir=./saved_models_10455 \
    --data_limit 10454 \
    --model_type=roberta \
    --config_name=microsoft/codebert-base \
    --model_name_or_path=microsoft/codebert-base \
    --tokenizer_name=roberta-base \
    --do_train \
    --train_data_file=./train_php.jsonl \
    --eval_data_file=./valid_php.jsonl \
    --epoch 2 \
    --block_size 512 \
    --train_batch_size 8 \
    --gradient_accumulation_steps 4 \
    --eval_batch_size 64 \
    --fp16 \
    --learning_rate 5e-5 \
    --max_grad_norm 1.0 \
    --evaluate_during_training \
    --seed 123456 2>&1| tee train_10455.log \

python run.py \
    --output_dir=./saved_models_5228 \
    --data_limit 5228 \
    --model_type=roberta \
    --config_name=microsoft/codebert-base \
    --model_name_or_path=microsoft/codebert-base \
    --tokenizer_name=roberta-base \
    --do_train \
    --train_data_file=./train_php.jsonl \
    --eval_data_file=./valid_php.jsonl \
    --epoch 2 \
    --block_size 512 \
    --train_batch_size 8 \
    --gradient_accumulation_steps 4 \
    --eval_batch_size 64 \
    --fp16  \
    --learning_rate 5e-5 \
    --max_grad_norm 1.0 \
    --evaluate_during_training \
    --seed 123456 2>&1| tee train_5228.log \

python run.py \
    --output_dir=./saved_models_2614 \
    --data_limit 2614 \
    --model_type=roberta \
    --config_name=microsoft/codebert-base \
    --model_name_or_path=microsoft/codebert-base \
    --tokenizer_name=roberta-base \
    --do_train \
    --train_data_file=./train_php.jsonl \
    --eval_data_file=./valid_php.jsonl \
    --epoch 2 \
    --block_size 512 \
    --train_batch_size 8 \
    --gradient_accumulation_steps 4 \
    --eval_batch_size 64 \
    --fp16  \
    --learning_rate 5e-5 \
    --max_grad_norm 1.0 \
    --evaluate_during_training \
    --seed 123456 2>&1| tee train_2614.log \

python run.py \
    --output_dir=./saved_models_1307 \
    --data_limit 1307 \
    --model_type=roberta \
    --config_name=microsoft/codebert-base \
    --model_name_or_path=microsoft/codebert-base \
    --tokenizer_name=roberta-base \
    --do_train \
    --train_data_file=./train_php.jsonl \
    --eval_data_file=./valid_php.jsonl \
    --epoch 2 \
    --block_size 512 \
    --train_batch_size 8 \
    --gradient_accumulation_steps 4 \
    --eval_batch_size 64 \
    --fp16  \
    --learning_rate 5e-5 \
    --max_grad_norm 1.0 \
    --evaluate_during_training \
    --seed 123456 2>&1| tee train_1307.log \

python run.py \
    --output_dir=./saved_models_654 \
    --data_limit 654 \
    --model_type=roberta \
    --config_name=microsoft/codebert-base \
    --model_name_or_path=microsoft/codebert-base \
    --tokenizer_name=roberta-base \
    --do_train \
    --train_data_file=./train_php.jsonl \
    --eval_data_file=./valid_php.jsonl \
    --epoch 2 \
    --block_size 512 \
    --train_batch_size 8 \
    --gradient_accumulation_steps 4 \
    --eval_batch_size 64 \
    --fp16  \
    --learning_rate 5e-5 \
    --max_grad_norm 1.0 \
    --evaluate_during_training \
    --seed 123456 2>&1| tee train_654.log \

python run.py \
    --output_dir=./saved_models_327 \
    --data_limit 327 \
    --model_type=roberta \
    --config_name=microsoft/codebert-base \
    --model_name_or_path=microsoft/codebert-base \
    --tokenizer_name=roberta-base \
    --do_train \
    --train_data_file=./train_php.jsonl \
    --eval_data_file=./valid_php.jsonl \
    --epoch 2 \
    --block_size 512 \
    --train_batch_size 8 \
    --gradient_accumulation_steps 4 \
    --eval_batch_size 64 \
    --fp16  \
    --learning_rate 5e-5 \
    --max_grad_norm 1.0 \
    --evaluate_during_training \
    --seed 123456 2>&1| tee train_327.log \
    


