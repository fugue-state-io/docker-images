    #!/bin/sh
    set -e
    echo "Generating main.cf from template..."
    envsubst < /etc/postfix/main.cf.template > /etc/postfix/main.cf
    echo "Generated main.cf:"
    cat /etc/postfix/main.cf
    echo "Starting Postfix..."
    exec "$@"
