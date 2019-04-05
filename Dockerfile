#FROM bluescorpio711/eduroam
#FROM eduroamm/eduroam-imap-playbook
FROM ubuntu
USER root

RUN apt-get update
#RUN apt install python3-pip
#RUN pip3 install ansible
RUN apt-get install -y ansible
RUN apt-get install -y git
RUN git clone https://github.com/asnet-am/eduroam-imap-playbook.git

WORKDIR /eduroam-imap-playbook
