poetry run python3 -m fastchat.serve.controller 2>&1 | tee controller.log &
poetry run python3 -m fastchat.serve.model_worker --model-path lmsys/vicuna-13b-v1.3 --load-8bit 2>&1 | tee model_worker.log &
poetry run python3 -m fastchat.serve.openai_api_server --host 0.0.0.0 --port 8000 2>&1 | tee openai_api_server.log &
