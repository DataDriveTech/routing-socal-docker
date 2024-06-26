# syntax=docker/dockerfile:1
FROM sebmilardo/py-osrm-socal@sha256:24a7218f7be94e20ec5b683eb7a834685b7d8d292048c44c463dab33eb8327bc
ENV PATH="/venv/bin:$PATH"

COPY requirements.txt requirements.txt

RUN pip install --upgrade pip && pip install -r requirements.txt
