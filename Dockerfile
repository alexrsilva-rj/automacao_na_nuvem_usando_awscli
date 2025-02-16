FROM ubuntu:latest

# UPDATE AND DEPENDENCIES
RUN apt update -y
RUN apt install curl unzip zip nano git -y

#PYTHON
RUN apt install python3 -y
RUN apt install python3-dev -y
RUN apt install python3-pip -y


# COM X86/X64
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

# COM ARM
#RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-aarch64.zip" -o "awscliv2.zip"

RUN unzip awscliv2.zip
RUN ./aws/install
RUN rm -rf ./aws
RUN rm -rf awscliv2.zip