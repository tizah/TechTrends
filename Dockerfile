FROM python:3.8-alpine

WORKDIR /app

COPY ./techtrends/ /app/

RUN pip3 install -r requirements.txt
RUN python init_db.py

EXPOSE 3111

CMD [ "python", "app.py" ]