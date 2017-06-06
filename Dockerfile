FROM tiangolo/uwsgi-nginx-flask:flask

MAINTAINER Tim Reillydoc "TimReilly@live.com"

COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt

EXPOSE 8080 
EXPOSE 80 

ENTRYPOINT ["python"]
CMD ["main.py"]