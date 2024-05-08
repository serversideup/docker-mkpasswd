FROM alpine:3.19

RUN apk add --no-cache mkpasswd

# Set mkpasswd as the entrypoint, any CMD or runtime arguments will be passed to it
ENTRYPOINT ["mkpasswd"]

# Default the method to sha512crypt
CMD ["-m", "sha512crypt"]