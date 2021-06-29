
#!/bin/sh

#cd to yolov4
cd /content/ScaledYOLOv4

#predict
SOURCE="/content/drive/MyDrive/Autonomous_driving_CNU/yolo_kitti/sample_test/image"
WEIGHTS="/content/ScaledYOLOv4/weights/yolov4-p5.pt"
CONF="0.4"
OUTPUT="/content/drive/MyDrive/Autonomous_driving_CNU/yolo_kitti/scaled_yolov4/yolov4_csp"

echo "Source of images : $SOURCE"
echo "Weights from : $WEIGHTS"
echo "Confindance : $CONF"

python3 /content/ScaledYOLOv4/detect.py --weights $WEIGHTS --conf $CONF --source $SOURCE --output $OUTPUT --save-txt