FROM ubuntu:18.04

ENV PATH="/opt/conda/bin:$PATH:"

RUN apt-get update

RUN apt-get install -y wget && rm -rf /var/lib/apt/lists/*

RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh && bash Miniconda3-latest-Linux-x86_64.sh -b -p /opt/conda && rm -f Miniconda3-latest-Linux-x86_64.sh

RUN conda create -n container_env -c conda-forge -c bioconda bedtools
RUN conda init bash

RUN echo "conda activate container_env" >> ~/.bashrc

SHELL ["/bin/bash"]
