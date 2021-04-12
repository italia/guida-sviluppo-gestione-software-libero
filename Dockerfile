FROM python:3.8

WORKDIR /app

COPY requirements.txt requirements.txt

COPY configuration/conf.py conf.py

RUN pip3 install -r requirements.txt

EXPOSE 8000

CMD [ "sphinx-autobuild", ".", "_build", "--host", "0.0.0.0"]
