FROM python:3.9

WORKDIR /app

COPY preview_build/requirements.txt requirements.txt

COPY preview_build/preview_configuration.py conf.py

RUN pip3 install -r requirements.txt

EXPOSE 8000

CMD [ "sphinx-autobuild", ".", "_build", "--host", "0.0.0.0"]
