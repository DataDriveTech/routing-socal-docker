# syntax=docker/dockerfile:1
FROM sebmilardo/py-osrm-socal@sha256:e651dc2aa8abfa0d70cdad8831e6c80bd5495fdb6815379fc8340c2fefd6e7a0
RUN python3 -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

COPY requirements.txt requirements.txt
RUN pip install --upgrade pip && pip install -r requirements.txt

RUN apt-get update && apt-get -y install git libgeos-dev libgeos++-dev libspatialindex-dev && rm -rf /var/lib/apt/lists/*