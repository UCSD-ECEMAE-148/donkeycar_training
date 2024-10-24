# donkeycar_training
This is for donkcar v4 model training on any computer that has a NVIDIA GPU.

## Steps
1. Make sure you have install docker and nvidia-container-toolkit.
If not, please look at [docker installation guide](https://docs.docker.com/desktop/install/linux/ubuntu/) and [nvidia-container-toolkit installation guide](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html)

2. Clone this repository, and get in
```
git clone https://github.com/UCSD-ECEMAE-148/donkeycar_training.git
cd donkeycar_training/
```

3. Build container image. __No need__ to rebuild if you've built it.
```
bash build_donkey_v4.sh
```

4. Execute the following command, and your terminal (__Container Terminal__) will be in the container environment:
```
bash run.sh
```
5. Now, your container terminal's working directory should be in `~/mycar`. Please open a new terminal (__Local terminal__) on your local machine, and send you data to `~/mycar/data`. Use the following command,
```
cd <directory to this repo>/donkeycar_training/
docker cp <directory to your recorded data> donkey_v4:~/mycar/data
```
6. Go back to the __Container Terminal__. Train the model, using the command below in the container terminal. And wait for it to finish.
```
bash train.py
```
7. In the __Local terminal__,do
```
bash send_model.sh
```
8. Finally, your models should be in the `model_output/`