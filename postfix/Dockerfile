# Use Boky's Postfix as the base
FROM boky/postfix:v4.4.0

# Install envsubst (provided by gettext)
RUN apt-get update && apt-get install -y gettext

# Set entrypoint to the envsubst script (if needed)
COPY entrypoint.sh /etc/postfix/entrypoint.sh
RUN chmod +x /etc/postfix/entrypoint.sh

HEALTHCHECK NONE

ENTRYPOINT ["/etc/postfix/entrypoint.sh"]
