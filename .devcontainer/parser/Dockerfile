FROM mcr.microsoft.com/devcontainers/java:21-jdk-bookworm

RUN apt-get update && apt-get install -y \
    tig \
    gradle

USER vscode

WORKDIR /workspace

