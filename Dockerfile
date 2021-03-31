ARG PY_VERSION="3-alpine"

FROM python:${PY_VERSION}

ARG TF_VERSION="0.14.9"

RUN apk add --update git bash curl unzip zip openssl make

RUN curl https://releases.hashicorp.com/terraform/${TF_VERSION}/terraform_${TF_VERSION}_linux_amd64.zip > terraform_${TF_VERSION}_linux_amd64.zip \
  && unzip terraform_${TF_VERSION}_linux_amd64.zip -d /bin \
  && rm -f terraform_${TF_VERSION}_linux_amd64.zip

# RUN pip install boto3, psycopg2

ENTRYPOINT ["terraform"]
