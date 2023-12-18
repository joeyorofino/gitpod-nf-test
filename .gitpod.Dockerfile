FROM gitpod/workspace-base:latest

RUN apt-get update --quiet && apt-get install --quiet --yes wget

RUN wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh && bash Miniconda3-latest-Linux-x86_64.sh -b && rm Miniconda3-latest-Linux-x86_64.sh

RUN conda create -n temp_env -c conda-forge -c bioconda nextflow samtools

RUN mkdir -p /tmp/conda
ENV CONDA_PKGS_DIRS /tmp/conda
