# Container image that runs your code
FROM alpine:3.10

# Install necessary dependencies
RUN apk update && apk --no-cache add alpine-sdk git bash sqlite-dev zlib-dev

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
