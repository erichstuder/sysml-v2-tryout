FROM eclipse-temurin:21-jdk

RUN apt-get update && apt-get install -y \
    git

RUN git clone https://github.com/Systems-Modeling/SysML-v2-Pilot-Implementation.git

RUN cd SysML-v2-Pilot-Implementation && \
    ./mvnw clean install

ARG USER
ARG UID
RUN useradd -m -s /bin/bash -u ${UID:-2222} $USER
USER ${USER}
