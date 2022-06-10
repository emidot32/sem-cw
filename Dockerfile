FROM bitnami/jenkins
LABEL maintainer "Bitnami <containers@bitnami.com>"

USER 0
RUN install_packages python3 python3-pip
RUN pip install --upgrade pip
RUN chmod -R 777 /usr/lib/python3.9
RUN mkdir /.local
RUN chmod -R 777 /.local
USER 1001