FROM python:3.11.0-slim

RUN pip install poetry
RUN poetry config virtualenvs.create false

COPY ./src/pyproject.toml ./src/poetry.lock ./
RUN poetry install
