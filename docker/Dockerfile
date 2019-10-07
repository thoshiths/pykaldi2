FROM ubuntu:18.04

RUN apt-get update \
    && apt-get install -y \
    python3 \
    python3-pip \
    python2.7 \
    autoconf \
    automake \
    cmake \
    curl \
    g++ \
    vim \
    git \
    graphviz \
    libatlas3-base \
    libtool \
    make \
    pkg-config \
    subversion \
    unzip \
    wget \
    sox \ 
    ninja-build \
    zlib1g-dev

RUN ln -s /usr/bin/python3 /usr/bin/python \
    && ln -s /usr/bin/pip3 /usr/bin/pip

RUN git clone https://github.com/thoshith-s/pykaldi.git /pykaldi \
    && cd /pykaldi/ \
    && pip install --upgrade pip \
    && pip install -r requirements.txt \
    && cd /pykaldi/tools && ./check_dependencies.sh \
    && ./install_protobuf.sh \
    && ./install_clif.sh \
    && ./install_kaldi.sh \
    && cd ../ \
    && python setup.py install
