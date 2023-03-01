# docker buildx create --name ingress-nginx --buildkitd-flags '--allow-insecure-entitlement network.host'
From bitnami/tensorflow-serving:1.13.0-ol-7-r120
RUN apt-get install python3-pip #python3
RUN pip install tensorflow==1.13.0
RUN pip install tensorflow-gpu==1.13.0
RUN pip install keras==2.2.4
RUN pip install certifi==2021.10.8
RUN pip install charset-normalizer==2.0.12
RUN pip install click==8.0.4
RUN pip install cycler==0.11.0
RUN pip install cmake
RUN pip install dlib==19.17
RUN pip install docker-pycreds==0.4.0
RUN pip install matplotlib==3.5.1
RUN pip install ninja==1.10.2.3
RUN pip install numpy==1.21.5
RUN pip install opencv-python-headless
RUN pip install Pillow==9.0.1
RUN pip install scipy==1.7.3
RUN pip install scikit-learn
RUN pip install mingw libpython
RUN pip install theano
