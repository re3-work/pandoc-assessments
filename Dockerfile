# syntax=docker/dockerfile:1

FROM pandoc/latex:latest
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

RUN apk --no-cache add msttcorefonts-installer fontconfig && \
    update-ms-fonts && \
    fc-cache -f