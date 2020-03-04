FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y install \
    python3 \
    python3-venv \
    python3-pip

RUN pip3 install setuptools

COPY /home/erdem/Ws/PyPi/form/form/ /root/packages/form/
WORKDIR /root/packages/form
RUN pip3 install /root/packages/form

CMD ["python3","test/form.py"]


