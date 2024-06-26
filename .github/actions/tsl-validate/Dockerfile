FROM amd64/ubuntu:22.04

ENV TZ=Europe/Berlin
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt update 
RUN apt-get -y install software-properties-common

RUN add-apt-repository -y ppa:deadsnakes/ppa && \
  apt update && apt-get -y install python3-pip

#RUN python3 -m pip install --upgrade pip

RUN apt-get -y install \
    python3.8 python3.8-venv \
    python3.9 python3.9-venv \
    python3.10 python3.10-venv \
    python3.11 python3.11-venv \
    python3.12 python3.12-venv && \
    mkdir -p /py/venvs && \
    python3.8 -m venv /py/venvs/py38 && \
    python3.9 -m venv /py/venvs/py39 && \
    python3.10 -m venv /py/venvs/py310 && \
    python3.11 -m venv /py/venvs/py311 && \
    python3.12 -m venv /py/venvs/py312

COPY requirements.txt /requirements.txt

RUN . /py/venvs/py38/bin/activate && \
  pip install --ignore-installed -r /requirements.txt && \
  pip install --ignore-installed ruff && pip install --ignore-installed yamllint && \
  deactivate

RUN . /py/venvs/py39/bin/activate && \
  pip install --ignore-installed -r /requirements.txt && \
  pip install --ignore-installed ruff && pip install --ignore-installed yamllint && \
  deactivate

RUN . /py/venvs/py310/bin/activate && \
  pip install --ignore-installed -r /requirements.txt && \
  pip install --ignore-installed ruff && pip install --ignore-installed yamllint && \
  deactivate

RUN . /py/venvs/py311/bin/activate && \
  pip install --ignore-installed -r /requirements.txt && \
  pip install --ignore-installed ruff && pip install --ignore-installed yamllint && \
  deactivate

RUN . /py/venvs/py312/bin/activate && \
  pip install --ignore-installed -r /requirements.txt && \
  pip install --ignore-installed ruff && pip install --ignore-installed yamllint && \
  deactivate

COPY entrypoint.sh /entrypoint.sh

LABEL org.opencontainers.image.source=https://github.com/db-tu-dresden/TSL
LABEL org.opencontainers.image.description="TSLGenerator Validation Image for x86"
LABEL org.opencontainers.image.licenses=Apache-2.0

ENTRYPOINT ["/entrypoint.sh"]
