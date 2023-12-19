FROM gitpod/workspace-base:latest

USER root

RUN apt-get update --quiet && apt-get install --quiet --yes wget

RUN wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh && bash Miniconda3-latest-Linux-x86_64.sh -b -p /opt/conda && rm Miniconda3-latest-Linux-x86_64.sh

ENV PATH="/opt/conda/bin:$PATH"

RUN chown -R gitpod:gitpod /opt/conda

USER gitpod

RUN conda create -n temp_env -c conda-forge -c bioconda nextflow samtools snakemake

