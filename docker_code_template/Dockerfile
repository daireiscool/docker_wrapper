# Install the base requirements for the app.
# This stage is to support development.
FROM python:3.8-slim-buster AS base
WORKDIR /home
COPY ./<$REQUIREMENTS_TXT_FOLDER> /home/<$REQUIREMENTS_TXT_FOLDER>

RUN apt-get update && apt-get install -y wget libsasl2-2 \
		libsasl2-dev python3-dev

RUN pip3 install -r <$REQUIREMENTS_TXT_FOLDER>

ADD ./app /home/app
ADD ./<$CODE_FOLDER_NAME> /home/<$CODE_FOLDER_NAME>
ADD ./README.md /home/README.md
