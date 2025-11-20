FROM debian:latest

RUN apt-get update && apt-get install -y \
    git \
    wget \
    openjdk-21-jre \
    nodejs

RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /tmp/miniconda.sh && \
    bash /tmp/miniconda.sh -b -p /opt/conda && \
    rm /tmp/miniconda.sh

ENV PATH="/usr/bin:/opt/conda/bin:${PATH}"

ARG USER
ARG UID
RUN useradd -m -s /bin/bash -u ${UID:-2222} $USER

WORKDIR /home/${USER}
RUN git clone --depth 1 https://github.com/Systems-Modeling/SysML-v2-Release.git && \
    conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/main && \
    conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/r
RUN cd SysML-v2-Release/install/jupyter && \
    ./install.sh

USER ${USER}
