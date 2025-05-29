# Use Boky's Postfix as the base
FROM boky/postfix:3.8.3

# Install envsubst (provided by gettext)
RUN apk add --no-cache gettext

# Set entrypoint to the envsubst script (if needed)
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
