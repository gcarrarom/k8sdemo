FROM python

RUN pip install flask

RUN mkdir /src

COPY ./app.py /src

WORKDIR /src

ENTRYPOINT ["flask", "run", "--host", "0.0.0.0"]