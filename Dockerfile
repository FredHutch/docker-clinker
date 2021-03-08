FROM quay.io/aptible/ubuntu:18.04

RUN apt update && \
    apt install -y python3 python3-pip

RUN cd /usr/local/ && \
    git clone https://github.com/gamcil/clinker && \
    cd clinker && \
    git checkout v0.0.16 && \
    sed -i 's/.open() as/.open(encoding="utf-8") as/g' clinker/plot.py && \
    sed -i 's/fp.write(html)/fp.write(html.encode("utf-8"))/g' clinker/plot.py && \
    sed -i 's/open(output, "w")/open(output, "wb")/g' clinker/plot.py && \
    python3 -m pip install .
