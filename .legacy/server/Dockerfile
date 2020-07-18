FROM tiangolo/uvicorn-gunicorn-starlette:python3.7

COPY ./src /app

COPY ./requirements.txt ./app/requirements.txt

WORKDIR /app

RUN pip3 install -r ./app/requirements.txt