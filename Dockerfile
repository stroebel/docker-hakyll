FROM haskell:9.2.5-slim

COPY stack.yaml /root/.stack/global-project/stack.yaml

RUN stack upgrade && \
  stack install \
    base \
    containers \
    hakyll \
    mtl \
    text \
    doctemplates \
    pandoc

