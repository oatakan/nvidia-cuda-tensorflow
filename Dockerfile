FROM nvcr.io/nvidia/cuda:11.2.1-cudnn8-runtime-ubi8

RUN yum install -y \
    python3-pip \
    python3 \
    python3-setuptools \
    && yum clean all \
    && rm -rf /var/cache/yum/*

RUN pip3 install pip --upgrade

RUN pip3 install tensorflow==2.5.*