FROM selenium/node-firefox

USER root
RUN apt-get update -qqy && \
    apt-get install -qy python3.6 python3-pip
RUN pip3 install selenium certifi

ADD main.py /

CMD [ "python3", "./main.py" ]
