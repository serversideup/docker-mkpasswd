FROM alpine:3.19

# Install whois package which contains mkpasswd
RUN apk add --no-cache whois

# Set mkpasswd as the entrypoint, any CMD or runtime arguments will be passed to it
ENTRYPOINT ["mkpasswd"]

# Set CMD to an empty array to ensure no additional arguments are passed by default.
CMD []