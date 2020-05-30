FROM centos
RUN yum install python3 -y \
    pip3 install --upgrade pip

RUN pip3 install tensorflow keras pillow numpy sklearn matplotlib opencv-python3 -y

RUN mkdir /root/mlcode/

WORKDIR /root/mlcode/

CMD ["python3" , "FashionMNIST.py"]



 
