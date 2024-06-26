# syntax=docker/dockerfile:1
FROM sebmilardo/py-osrm-socal@sha256:8a321b8d2459dacff90df7d1217ed25efecb451e6eeb90d6727b9e217a6e29a0
ENV PATH="/venv/bin:$PATH"

COPY requirements.txt requirements.txt

RUN pip install --upgrade pip && pip install -r requirements.txt
