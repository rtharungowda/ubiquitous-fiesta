#!/bin/sh

#cd to yolov5
cd /content/yolov5

#predict
SOURCE="/content/drive/MyDrive/Autonomous_driving_CNU/yolo_kitti/yolov5/sample_test/image"
WEIGHTS="/content/yolov5/yolov5s.pt"
CONF="0.4"
PROJECT="/content/drive/MyDrive/Autonomous_driving_CNU/yolo_kitti/yolov5"
NAME="yolov5_s"

echo "Source of images : $SOURCE"
echo "Weights from : $WEIGHTS"
echo "Confindance : $CONF"

python3 /content/yolov5/detect.py --source $SOURCE --weights $WEIGHTS --conf $CONF --device "cpu" --save-txt --save-conf --project $PROJECT --name $NAME