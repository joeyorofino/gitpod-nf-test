FROM gitpod/workspace-full:latest

USER root

RUN wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh && bash Miniconda3-latest-Linux-x86_64.sh -b -p /opt/conda && rm Miniconda3-latest-Linux-x86_64.sh

ENV PATH="/opt/conda/bin:$PATH"

RUN mkdir -p /workspace/data && chown -R gitpod:gitpod /opt/conda /workspace/data

USER gitpod

RUN conda install -c conda-forge -c bioconda nextflow samtools

