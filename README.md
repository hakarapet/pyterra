# pyterra
Custom Python/Custom Terraform Docker image build

Build with default values (`python:3-alpine`, `terraform:0.14.9`)

```
docker build . -t hakarapet/pyterra:py3alpine-tf0.14.9
```

Or build with custom versions of python and/or terraform. \
For example:

```
docker build -t hakarapet/pyterra:3-buster-tf0.15.0-beta2 --build-arg PY_VERSION=3-buster TF_VERSION=0.15.0-beta2 .
```

Push to Dockerhub (if you want) and update the latest tag

```
docker push hakarapet/pyterra:<your_version>

docker tag
```
