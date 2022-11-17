#!/bin/sh
if [ ! -f UUID ]; then
  UUID="32c0186c-0099-4a2f-850b-61b68d285ef9"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

