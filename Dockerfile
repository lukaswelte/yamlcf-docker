FROM python:3-alpine

ARG VERSION=0.3.4

RUN pip install yamlcf==$VERSION

ENTRYPOINT ["yamlcf.py"]
