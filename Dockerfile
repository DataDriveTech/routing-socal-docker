# syntax=docker/dockerfile:1
FROM sebmilardo/py-osrm-socal@24.09
ENV PATH="/venv/bin:$PATH"

COPY requirements.txt requirements.txt

RUN pip install --upgrade pip && pip install -r requirements.txt
