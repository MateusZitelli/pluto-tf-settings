sudo /sbin/sysctl        -w net.ipv4.tcp_keepalive_time=120        net.ipv4.tcp_keepalive_intvl=120        net.ipv4.tcp_keepalive_probes=5

export STORAGE_BUCKET=gs://retinanet-test
export MODEL_DIR=${STORAGE_BUCKET}/mateus-test-model/

python3 /home/mateus/tpu/models/official/detection/main.py --use_tpu=True --tpu=tpu-test --num_cores=8 --model_dir="${MODEL_DIR?}" --mode=train --config_file=./traffic_sign_retinatenet.yaml
