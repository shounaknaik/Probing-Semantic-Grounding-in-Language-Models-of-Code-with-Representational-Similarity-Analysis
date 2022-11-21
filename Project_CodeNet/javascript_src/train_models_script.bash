python run.py \
    --output_dir=./saved_models_12377 \
    --data_limit 12376 \
    --model_type=roberta \
    --config_name=microsoft/codebert-base \
    --model_name_or_path=microsoft/codebert-base \
    --tokenizer_name=roberta-base \
    --do_train \
    --train_data_file=./train_javascript.jsonl \
    --eval_data_file=./valid_javascript.jsonl \
    --epoch 2 \
    --block_size 512 \
    --train_batch_size 8 \
    --gradient_accumulation_steps 4 \
    --eval_batch_size 64 \
    --fp16 \
    --learning_rate 5e-5 \
    --max_grad_norm 1.0 \
    --evaluate_during_training \
    --seed 123456 2>&1| tee train_12377.log \

python run.py \
    --output_dir=./saved_models_6189 \
    --data_limit 6189 \
    --model_type=roberta \
    --config_name=microsoft/codebert-base \
    --model_name_or_path=microsoft/codebert-base \
    --tokenizer_name=roberta-base \
    --do_train \
    --train_data_file=./train_javascript.jsonl \
    --eval_data_file=./valid_javascript.jsonl \
    --epoch 2 \
    --block_size 512 \
    --train_batch_size 8 \
    --gradient_accumulation_steps 4 \
    --eval_batch_size 64 \
    --fp16  \
    --learning_rate 5e-5 \
    --max_grad_norm 1.0 \
    --evaluate_during_training \
    --seed 123456 2>&1| tee train_6189.log \

python run.py \
    --output_dir=./saved_models_3095 \
    --data_limit 3095 \
    --model_type=roberta \
    --config_name=microsoft/codebert-base \
    --model_name_or_path=microsoft/codebert-base \
    --tokenizer_name=roberta-base \
    --do_train \
    --train_data_file=./train_javascript.jsonl \
    --eval_data_file=./valid_javascript.jsonl \
    --epoch 2 \
    --block_size 512 \
    --train_batch_size 8 \
    --gradient_accumulation_steps 4 \
    --eval_batch_size 64 \
    --fp16  \
    --learning_rate 5e-5 \
    --max_grad_norm 1.0 \
    --evaluate_during_training \
    --seed 123456 2>&1| tee train_3095.log \

python run.py \
    --output_dir=./saved_models_1548 \
    --data_limit 1548 \
    --model_type=roberta \
    --config_name=microsoft/codebert-base \
    --model_name_or_path=microsoft/codebert-base \
    --tokenizer_name=roberta-base \
    --do_train \
    --train_data_file=./train_javascript.jsonl \
    --eval_data_file=./valid_javascript.jsonl \
    --epoch 2 \
    --block_size 512 \
    --train_batch_size 8 \
    --gradient_accumulation_steps 4 \
    --eval_batch_size 64 \
    --fp16  \
    --learning_rate 5e-5 \
    --max_grad_norm 1.0 \
    --evaluate_during_training \
    --seed 123456 2>&1| tee train_1548.log \

python run.py \
    --output_dir=./saved_models_774 \
    --data_limit 774 \
    --model_type=roberta \
    --config_name=microsoft/codebert-base \
    --model_name_or_path=microsoft/codebert-base \
    --tokenizer_name=roberta-base \
    --do_train \
    --train_data_file=./train_javascript.jsonl \
    --eval_data_file=./valid_javascript.jsonl \
    --epoch 2 \
    --block_size 512 \
    --train_batch_size 8 \
    --gradient_accumulation_steps 4 \
    --eval_batch_size 64 \
    --fp16  \
    --learning_rate 5e-5 \
    --max_grad_norm 1.0 \
    --evaluate_during_training \
    --seed 123456 2>&1| tee train_774.log \

python run.py \
    --output_dir=./saved_models_387 \
    --data_limit 387 \
    --model_type=roberta \
    --config_name=microsoft/codebert-base \
    --model_name_or_path=microsoft/codebert-base \
    --tokenizer_name=roberta-base \
    --do_train \
    --train_data_file=./train_javascript.jsonl \
    --eval_data_file=./valid_javascript.jsonl \
    --epoch 2 \
    --block_size 512 \
    --train_batch_size 8 \
    --gradient_accumulation_steps 4 \
    --eval_batch_size 64 \
    --fp16  \
    --learning_rate 5e-5 \
    --max_grad_norm 1.0 \
    --evaluate_during_training \
    --seed 123456 2>&1| tee train_387.log \
    


