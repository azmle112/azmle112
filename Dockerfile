FROM pytorch/pytorch:1.11.0-cuda11.3-cudnn8-devel
RUN pip install pip
RUN pip install scipy==1.4.1
RUN pip install matplotlib==3.2.1
RUN pip install numpy==1.18.4
RUN pip install opencv-python==4.2.0.34
RUN pip install pillow==7.1.2
RUN pip install tensorboard==2.2.1
RUN pip install tqdm==4.46.0
RUN pip install torchvision==0.4.2

