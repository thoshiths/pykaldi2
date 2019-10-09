# Build full version of pykaldi (approx docker image size 22.1GB)
FROM ubuntu:18.04

RUN apt-get update \
    && apt-get install --no-install-recommends -y \
    ffmpeg \
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
    zlib1g-dev \ 
    && ln -s /usr/bin/python3 /usr/bin/python \
    && ln -s /usr/bin/pip3 /usr/bin/pip \
    && git clone https://github.com/thoshith-s/pykaldi.git /pykaldi \
    && cd /pykaldi/ \
    && pip install -r requirements.txt \
    && cd /pykaldi/tools && ./check_dependencies.sh \
    && ./install_protobuf.sh \
    && ./install_clif.sh \
    && ./install_kaldi.sh \
    && export KALDI_DIR=/kaldi/ \
    && cd ../ \
    && python setup.py install \
    && python setup.py test \
    && apt clean \
    && apt autoclean \
    && apt autoremove \
    && echo "export PATH=\"/opt/intel/bin:/kaldi/src/cudadecoderbin:/kaldi/src/base:/kaldi/src/bins:/kaldi/src/bin:/kaldi/src/chainbin:/kaldi/src/featbin:/kaldi/src/fgmmbin:/kaldi/src/fstbin:/kaldi/src/gmmbin:/kaldi/src/ivectorbin:/kaldi/src/kwsbin:/kaldi/src/latbin:/kaldi/src/lmbin:/kaldi/src/nnet2bin:/kaldi/src/nnet3bin:/kaldi/src/nnetbin:/kaldi/src/online2bin:/kaldi/src/onlinebin:/kaldi/src/sgmm2bin:/kaldi/src/tfrnnlmbin:/kaldi/src/gst-plugin:/kaldi/tools/openfst/bin:/kaldi/tools/srilm/lm/bin/i686-m64:${PATH}\"" >> /root/.bashrc \
    && echo "export KALDI_DIR=/kaldi/" >> /root/.bashrc \
    && echo "export LD_LIBRARY_PATH=\"${LD_LIBRARY_PATH}:/kaldi/tools/openfst/lib:/kaldi/src/lib\"" >> /root/.bashrc \
    && echo "export KALDI_ROOT=\"/kaldi\"" >> /root/.bashrc \
    && echo "export MKL_NUM_THREADS=1" >> /root/.bashrc \
    && echo "export LANG=C.UTF-8" >> /root/.bashrc

ENTRYPOINT ["/bin/bash"]
