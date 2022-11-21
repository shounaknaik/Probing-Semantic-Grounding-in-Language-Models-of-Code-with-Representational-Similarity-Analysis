python run.py \
    --output_dir=./saved_models_67337 \
    --data_limit 67336 \
    --model_type=roberta \
    --config_name=microsoft/codebert-base \
    --model_name_or_path=microsoft/codebert-base \
    --tokenizer_name=roberta-base \
    --do_train \
    --train_data_file=./train_python.jsonl \
    --eval_data_file=./valid_python.jsonl \
    --epoch 2 \
    --block_size 512 \
    --train_batch_size 8 \
    --gradient_accumulation_steps 4 \
    --eval_batch_size 64 \
    --fp16 \
    --learning_rate 5e-5 \
    --max_grad_norm 1.0 \
    --evaluate_during_training \
    --seed 123456 2>&1| tee train_67337.log \

python run.py \
    --output_dir=./saved_models_33669 \
    --data_limit 33669 \
    --model_type=roberta \
    --config_name=microsoft/codebert-base \
    --model_name_or_path=microsoft/codebert-base \
    --tokenizer_name=roberta-base \
    --do_train \
    --train_data_file=./train_python.jsonl \
    --eval_data_file=./valid_python.jsonl \
    --epoch 2 \
    --block_size 512 \
    --train_batch_size 8 \
    --gradient_accumulation_steps 4 \
    --eval_batch_size 64 \
    --fp16  \
    --learning_rate 5e-5 \
    --max_grad_norm 1.0 \
    --evaluate_during_training \
    --seed 123456 2>&1| tee train_33669.log \

python run.py \
    --output_dir=./saved_models_16834 \
    --data_limit 16834 \
    --model_type=roberta \
    --config_name=microsoft/codebert-base \
    --model_name_or_path=microsoft/codebert-base \
    --tokenizer_name=roberta-base \
    --do_train \
    --train_data_file=./train_python.jsonl \
    --eval_data_file=./valid_python.jsonl \
    --epoch 2 \
    --block_size 512 \
    --train_batch_size 8 \
    --gradient_accumulation_steps 4 \
    --eval_batch_size 64 \
    --fp16  \
    --learning_rate 5e-5 \
    --max_grad_norm 1.0 \
    --evaluate_during_training \
    --seed 123456 2>&1| tee train_16834.log \

python run.py \
    --output_dir=./saved_models_8417 \
    --data_limit 8417 \
    --model_type=roberta \
    --config_name=microsoft/codebert-base \
    --model_name_or_path=microsoft/codebert-base \
    --tokenizer_name=roberta-base \
    --do_train \
    --train_data_file=./train_python.jsonl \
    --eval_data_file=./valid_python.jsonl \
    --epoch 2 \
    --block_size 512 \
    --train_batch_size 8 \
    --gradient_accumulation_steps 4 \
    --eval_batch_size 64 \
    --fp16  \
    --learning_rate 5e-5 \
    --max_grad_norm 1.0 \
    --evaluate_during_training \
    --seed 123456 2>&1| tee train_8417.log \

python run.py \
    --output_dir=./saved_models_4208 \
    --data_limit 4208 \
    --model_type=roberta \
    --config_name=microsoft/codebert-base \
    --model_name_or_path=microsoft/codebert-base \
    --tokenizer_name=roberta-base \
    --do_train \
    --train_data_file=./train_python.jsonl \
    --eval_data_file=./valid_python.jsonl \
    --epoch 2 \
    --block_size 512 \
    --train_batch_size 8 \
    --gradient_accumulation_steps 4 \
    --eval_batch_size 64 \
    --fp16  \
    --learning_rate 5e-5 \
    --max_grad_norm 1.0 \
    --evaluate_during_training \
    --seed 123456 2>&1| tee train_4208.log \

python run.py \
    --output_dir=./saved_models_2104 \
    --data_limit 2104 \
    --model_type=roberta \
    --config_name=microsoft/codebert-base \
    --model_name_or_path=microsoft/codebert-base \
    --tokenizer_name=roberta-base \
    --do_train \
    --train_data_file=./train_python.jsonl \
    --eval_data_file=./valid_python.jsonl \
    --epoch 2 \
    --block_size 512 \
    --train_batch_size 8 \
    --gradient_accumulation_steps 4 \
    --eval_batch_size 64 \
    --fp16  \
    --learning_rate 5e-5 \
    --max_grad_norm 1.0 \
    --evaluate_during_training \
    --seed 123456 2>&1| tee train_2104.log \
    


