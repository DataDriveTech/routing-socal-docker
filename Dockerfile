# syntax=docker/dockerfile:1
FROM sebmilardo/py-osrm-socal:26.10

ENV UV_PROJECT_ENVIRONMENT="/usr/local" \
    UV_COMPILE_BYTECODE=1 \
    UV_NO_CACHE=1

COPY pyproject.toml uv.lock ./
RUN uv sync --frozen --no-install-project --no-dev
