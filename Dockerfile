FROM python3.12.7-slim

RUN pip install poetry==1.8.3

COPY . .

RUN poetry install
ENTRYPOINT ["poetry", 'run', 'uvicorn', 'main:app']