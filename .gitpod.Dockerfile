FROM gitpod/workspace-full:latest

RUN wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh && bash Miniconda3-latest-Linux-x86_64.sh -b -p /opt/conda && rm Miniconda3-latest-Linux-x86_64.sh


RUN conda create -n temp_env -c conda-forge -c bioconda nextflow samtools

RUN mkdir -p /tmp/conda
ENV CONDA_PKGS_DIRS /tmp/conda
