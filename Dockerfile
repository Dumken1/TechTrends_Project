FROM python:3.8
LABEL maintainer="Chibundu Ogbonnia"

COPY ./techtrends /app
WORKDIR /app
RUN pip install -r requirements.txt

# init database
RUN python init_db.py

EXPOSE 3111

# command to run on container start
CMD [ "python", "app.py" ]
