FROM python:3

ENV PYTHONUNBUFFERED 1

RUN apt-get update

RUN pip install Django

RUN pip install bcrypt

RUN mkdir /hello

RUN cd /hello

WORKDIR /hello

COPY . /hello/

EXPOSE 8000

CMD ["python", "manage.py", "makemigrations"]

CMD ["python", "manage.py", "migrate"]

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
