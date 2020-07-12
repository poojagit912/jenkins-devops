#Jenkins image
FROM jenkins/jenkins:lts

# Install GCP SDK
USER root
RUN curl https://sdk.cloud.google.com > /install.sh
RUN bash /install.sh --disable-prompts --install-dir=/
ENV PATH=/google-cloud-sdk/bin:$PATH

#Install all required tools
COPY ./install-tools.sh .
RUN sh install-tools.sh


