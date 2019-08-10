FROM python:3

ADD testmain.py /

CMD ["python3", "./testmain.py"]
