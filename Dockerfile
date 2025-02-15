# syntax=docker/dockerfile:1

FROM pandoc/latex:3.6-ubuntu
RUN tlmgr list
RUN tlmgr update --self && \
    tlmgr install \
    tcolorbox \
    environ \
    hyphenat \
    ragged2e \
    footmisc \
    wrapfig \
    titlesec

RUN apt-get update && apt-get install -y \
    ttf-mscorefonts-installer && \
    fc-cache -f
