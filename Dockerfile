FROM haskell:8.8.4

ENV LANG=C.UTF-8 \
    LC_ALL=C.UTF-8

RUN apt-get update && apt-get install --yes \
    git 

RUN stack upgrade && \
    stack --resolver lts-16.27 install \
    base \
    bytestring \
    conduit-combinators \
    containers \
    hakyll \
    mtl \
    stm
