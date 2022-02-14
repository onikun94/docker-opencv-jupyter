FROM ubuntu:18.04

ENV TZ=Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update -y && apt-get install -y\
    wget \
    vim \
    curl \
    nodejs \
    git \
    python3 \
    python3-dev \
    python3-pip \
    python3-setuptools \
    libopencv-dev\
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*


RUN python3 -m pip install --upgrade pip setuptools
RUN python3 -m pip install --upgrade --no-cache-dir \ 
    scikit-build \
    numpy \
    black \
    'jupyterlab~=3.0' \
    # 'jupyterlab-kite>=2.0.2' \
    jupyterlab_code_formatter~=1.4.10 \
    yapf~=0.32.0 \
    jupyterlab_tabnine \
    # jupyter \
    # && jupyter labextension install \
    #   '@kiteco/jupyterlab-kite' \
    jupyterlab-git --upgrade jupyterlab-git \
    lckr-jupyterlab-variableinspector \
    jupyterlab_widgets \
    jupyterlab_vim~=0.14.5 \
    jupyterlab-vimrc~=0.5.2 \
    ipywidgets \
    import-ipynb \
    && jupyter serverextension enable --py jupyterlab_code_formatter



RUN yes 1 | python3 -m pip install opencv-python

# RUN cd && \
#     wget https://linux.kite.com/dls/linux/current && \
#     chmod 777 current && \
#     sed -i 's/"--no-launch"//g' current > /dev/null && \
#     ./current --install ./kite-installer
# dockerでjupyterLab環境:linux.kite.comにアクセスできない．サーバが終わっている


WORKDIR /workspace/