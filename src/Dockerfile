FROM alpine:3.19

# Install whois package which contains mkpasswd
RUN apk add --no-cache whois

COPY --chmod=755 entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

# Set CMD to an empty array to ensure no additional arguments are passed by default.
# This allows the entrypoint script to control the arguments fully, providing defaults
# when no arguments are specified by the user, and respecting any user-provided arguments.
CMD []
