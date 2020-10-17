FROM python:3.8.3-alpine

WORKDIR /usr/src/app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# RUN apk update && apk add postgresql-dev gcc python3-dev mus1-dev

RUN apk update && apk add libpq

# Installing build dependencies
# For python3 you need to add python3-dev *please upvote the comment
# of @its30 below if you use this*
RUN apk add --virtual .build-deps gcc python3-dev musl-dev postgresql-dev

RUN pip install --upgrade pip

COPY ./requirements.txt .
RUN pip install -r requirements.txt

COPY ./entrypoint.sh  .
#copy project
COPY . .




ENTRYPOINT [ "/usr/src/app/entrypoint.sh" ]