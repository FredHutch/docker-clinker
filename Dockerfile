FROM quay.io/aptible/ubuntu:18.04

RUN apt update && \
    apt install -y python3 python3-pip

RUN python3 -m pip install git+https://github.com/gamcil/clinker@66e215f27a9cbd2600ad9e4b3015e5f090c41f81
