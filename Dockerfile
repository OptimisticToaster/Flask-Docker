FROM python:3.12.0b2-alpine3.18

RUN apk update

RUN mkdir /app

WORKDIR /app

COPY . /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

EXPOSE 5000

# ENV FLASK_APP app/app.py

CMD [ "flask", "run", "--host=0.0.0.0"]

# CMD [ "flask", "--app" , "app", "run", "--host=0.0.0.0"]

# CMD [ "flask", "--app" , "flaskr", "run", "--host=0.0.0.0"]

# These did not work
# CMD [ "python3", "-m" , "flaskr", "run", "--host=0.0.0.0"]
# CMD [ "flask", "--app" , "flaskr", "run", "--host=0.0.0.0"]
# CMD [ "python3", "-m" , "app", "run", "--host=0.0.0.0"]