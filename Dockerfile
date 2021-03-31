ARG py_version="3-alpine"
ARG tf_version="0.14.9"

FROM python:${py_version}

RUN apk add --update git bash curl unzip zip openssl make



RUN curl https://releases.hashicorp.com/terraform/${ty_version}/terraform_${ty_version}_linux_amd64.zip > terraform_${ty_version}_linux_amd64.zip && \
  unzip terraform_${ty_version}_linux_amd64.zip -d /bin && \
  rm -f terraform_${ty_version}_linux_amd64.zip

RUN pip install awscli boto3

ENTRYPOINT ["terraform"]
