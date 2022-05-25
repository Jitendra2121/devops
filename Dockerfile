FROM python:alpine3.7
RUN mkdir /app
COPY ./requirements.txt /app
WORKDIR /app
RUN pip install -r requirements.txt
COPY ./app.py /app
EXPOSE 5000
ENTRYPOINT [ "python" ]
CMD [ "app.py" ]
