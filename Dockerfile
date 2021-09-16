FROM gitpod/workspace-full:latest
LABEL maintainer="Taimos GmbH <info@taimos.de>"

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    sudo ./aws/install && \
    rm awscliv2.zip && \
    rm -rf /home/gitpod/aws && \
    npm install -g aws-authenticate jsmin && \
    pip3 install cfn-lint

COPY profile /home/gitpod/.bash_profile

COPY gitconfig /home/gitpod/.gitconfig
