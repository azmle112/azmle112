# From bitnami/tensorflow-serving:1.13.0-ol-7-r120
# RUN pip install tensorflow==1.13.0
# RUN pip install tensorflow-gpu==1.13.0
# RUN pip install keras==2.2.4
# RUN pip install certifi==2021.10.8
# RUN pip install charset-normalizer==2.0.12
# RUN pip install click==8.0.4
# RUN pip install cycler==0.11.0
# RUN pip install cmake
# RUN pip install dlib==19.17
# RUN pip install docker-pycreds==0.4.0
# RUN pip install matplotlib==3.5.1
# RUN pip install ninja==1.10.2.3
# RUN pip install numpy==1.21.5
# RUN pip install opencv-python-headless
# RUN pip install Pillow==9.0.1
# RUN pip install scipy==1.7.3
# RUN pip install scikit-learn
# RUN pip install mingw libpython
# RUN pip install theano
FROM nvidia/cuda:9.0-cudnn7-runtime-ubuntu16.04

RUN apt-get update && apt-get install -y \
	wget \
	vim \
	bzip2 \
        git \
        build-essential

#Downgrade CUDA, TF issue: https://github.com/tensorflow/tensorflow/issues/17566#issuecomment-372490062
RUN apt-get install --allow-downgrades -y libcudnn7=7.0.5.15-1+cuda9.0

#Install MINICONDA
RUN wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O Miniconda.sh && \
	/bin/bash Miniconda.sh -b -p /opt/conda && \
	rm Miniconda.sh

ENV PATH /opt/conda/bin:$PATH

RUN git clone https://github.com/pha-nguyen/Beholder-GAN.git

WORKDIR Beholder-GAN

RUN mkdir models

RUN mkdir experiment_folder

RUN mkdir image_data
