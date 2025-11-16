FROM eclipse-temurin:21-jdk

RUN apt-get update && apt-get install -y \
    git

RUN git clone https://github.com/Systems-Modeling/SysML-v2-Pilot-Implementation.git

RUN cd SysML-v2-Pilot-Implementation && \
    ./mvnw clean install

# Remove pre-existing ubuntu user to avoid UID conflicts
RUN userdel -r ubuntu 2>/dev/null || true

ARG USER
ARG UID
RUN useradd -m -s /bin/bash -u ${UID:-2222} $USER
USER ${USER}
