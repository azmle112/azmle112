FROM pytorch/pytorch:1.11.0-cuda11.3-cudnn8-devel
RUN pip install pip
RUN pip install opencv-python
RUN pip install sklearn
RUN pip install numpy
RUN pip install matplotlib
RUN pip install requests
RUN pip install scipy
RUN pip install tqdm
