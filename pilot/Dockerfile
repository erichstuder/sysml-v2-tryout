FROM eclipse-temurin:21-jdk

ARG USER
ARG UID

RUN apt-get update && apt-get install -y \
    git

WORKDIR /home/${USER}

RUN git clone https://github.com/Systems-Modeling/SysML-v2-Pilot-Implementation.git

RUN cd SysML-v2-Pilot-Implementation && \
    ./mvnw clean install

# Remove pre-existing ubuntu user to avoid UID conflicts
RUN userdel -r ubuntu 2>/dev/null || true

RUN useradd -m -s /bin/bash -u ${UID:-2222} $USER

# Add color to bash
RUN echo 'export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "' >> /home/$USER/.bashrc && \
    echo 'alias ls="ls --color=auto"' >> /home/$USER/.bashrc && \
    echo 'alias grep="grep --color=auto"' >> /home/$USER/.bashrc && \
    echo 'alias ll="ls -alF --color=auto"' >> /home/$USER/.bashrc && \
    echo 'export TERM=xterm-256color' >> /home/$USER/.bashrc

USER ${USER}
