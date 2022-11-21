FROM haskell:9.2.5-slim

RUN apt-get update && apt-get install --yes git

COPY stack.yaml /root/.stack/global-project/stack.yaml

RUN stack upgrade && \
  stack install \
    base \
    bytestring \
    conduit-combinators \
    containers \
    hakyll \
    mtl \
    stm

