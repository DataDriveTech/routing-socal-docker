# syntax=docker/dockerfile:1
FROM sebmilardo/py-osrm-socal:24.06
RUN python3 -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

COPY requirements.txt requirements.txt

RUN apt-get update && apt-get -y install git build-essential libgeos-dev libgeos++-dev libspatialindex-dev zlib1g-dev libboost1.81-all-dev && rm -rf /var/lib/apt/lists/*

# zlib1g-dev libboost1.81-all-dev are used by python orsm bindings

RUN pip install --upgrade pip && pip install -r requirements.txt