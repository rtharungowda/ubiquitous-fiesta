#!/bin/sh

cd /content/yolov5

#start training
BATCH_SIZE="8"
NUM_EPOCHS="600"
TRAIN_YAML="/content/ubiquitous-fiesta/yolo_kitti/yolov5/yolo_yml.yaml"
CLF="/content/yolov5/models/yolov5s.yaml"
WEIGHTS="/content/ubiquitous-fiesta/yolo_kitti/yolov5/yolov5s_cust12/weights/last.pt"
DEVICE="0"
PROJECT="/content/ubiquitous-fiesta/yolo_kitti/yolov5"
NAME="yolov5s_cust"
CACHE="false"

echo "Batch size : $BATCH_SIZE"
echo "Number of epochs : $NUM_EPOCHS"
echo "Link to train yaml : $TRAIN_YAML"
echo "Classifier : $CLF"
echo "Using weights from : $WEIGHTS"
echo "Device : $DEVICE"

python3 /content/yolov5/train.py --batch $BATCH_SIZE --epochs $NUM_EPOCHS --data $TRAIN_YAML --cfg $CLF  --weights $WEIGHTS --project $PROJECT --name $NAME --device $DEVICE

#tensorboard
cd /usr/local/lib/python3.7/dist-packages/tensorboard

LOG_DIR="/content/yolov5/runs/train"

python3 main.py --logdir $LOG_DIR