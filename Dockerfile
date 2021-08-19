FROM jupyter/scipy-notebook

RUN pip install tqdm more-itertools==8.0.2
RUN pip install geopandas

ENV WORK_DIR ${HOME}/work
WORKDIR /work
ADD . /work
USER jovyan

