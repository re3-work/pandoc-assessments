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

RUN echo "ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true" | debconf-set-selections

RUN apt-get update && apt-get install -y --no-install-recommends ttf-mscorefonts-installer

RUN fc-cache -fv
