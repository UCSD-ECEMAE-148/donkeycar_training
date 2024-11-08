#!/bin/bash
xhost +
docker run \
    --name donkey_v4 \
    -it \
    --rm \
    --privileged \
    --net=host \
    -e DISPLAY=$DISPLAY \
    -v /dev/bus/usb:/dev/bus/usb \
    --device /dev/video0 \
    -v /run/user/1000/gdm/Xauthority:/root/.Xauthority:rw \
    -v ./train.sh:/root/mycar/train.sh \
    --runtime=nvidia \
    --gpus all \
    donkey_v4:latest