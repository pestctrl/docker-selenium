FROM python:3.7.4-buster

USER root

RUN apt-get update \
    && apt-get install -y tigervnc-standalone-server i3

RUN pip3 install selenium certifi

EXPOSE 5920

ADD main.py /

ADD password.txt /

RUN echo n | cat password.txt password.txt - | vncpasswd

RUN rm password.txt

RUN vncserver :20 -geometry 1920x1080 -depth 24

# CMD [ "python3", "./main.py" ]
