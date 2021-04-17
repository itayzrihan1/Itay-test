FROM python:3
ADD . /code
WORKDIR /code
COPY rest_app.py
RUN pip install flask
RUN pip install PyMySQL
EUN CHMOD 644 rest_app.py
CMD ["python", "rest_app.py"]
