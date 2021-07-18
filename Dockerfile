FROM ubuntu:21.04

# Disable prompts in apt.
ARG DEBIAN_FRONTEND=noninteractive

# Update the base installation.
RUN apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get autoclean && \
    apt-get autoremove

# Unminimize the installation.
RUN yes | unminimize && \
    apt-get install -y locales man && \
    locale-gen en_US.UTF-8

# Install the ubuntu-server metapackage.
RUN apt-get install -y ubuntu-server
