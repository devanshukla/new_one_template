FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN new_one_template create-db
RUN new_one_template populate-db
RUN new_one_template add-user -u admin -p admin
EXPOSE 5000
CMD ["new_one_template", "run"]
