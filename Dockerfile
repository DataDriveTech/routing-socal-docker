# syntax=docker/dockerfile:1
FROM sebmilardo/py-osrm-socal:25.06
ENV PATH="/venv/bin:$PATH"

COPY requirements.txt requirements.txt

RUN pip install --upgrade pip && pip install -r requirements.txt
