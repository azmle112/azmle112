FROM pytorch/pytorch:1.11.0-cuda11.3-cudnn8-devel
RUN pip install pip
RUN pip install scipy
RUN pip install matplotlib
RUN pip install numpy
RUN pip install pillow==7.1.2
RUN pip install tensorboard==2.2.1
RUN pip install tqdm
RUN pip install torchvision
Run pip install facenet_pytorch
Run pip install pandas
RUN pip install requests
RUN pip install opencv-python-headless
RUN pip install sklearn
