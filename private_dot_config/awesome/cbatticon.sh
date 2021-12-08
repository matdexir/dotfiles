#!/usr/bin/env bash

SERVICE="cbatticon"
# FLAGS="-t 16x16"
if pgrep -x "$SERVICE" >/dev/null
then
    killall ${SERVICE}
    ${SERVICE} ${FLAGS} &
else
    ${SERVICE} ${FLAGS} &
fi
