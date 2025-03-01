# syntax=docker/dockerfile:1
FROM sebmilardo/py-osrm-socal:25.03
ENV PATH="/venv/bin:$PATH"

COPY requirements.txt requirements.txt

RUN pip install --upgrade pip && pip install -r requirements.txt
