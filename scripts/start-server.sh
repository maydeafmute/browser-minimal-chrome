#!/bin/bash
export DISPLAY=:99
export XAUTHORITY=/browser/.Xauthority

echo "---Starting Services---"
vncserver -geometry 1024x768 -depth 16 :99 -rfbport ${PORT} -noxstartup -securitytypes none 2>/dev/null
screen -d -m env HOME=/etc /usr/bin/fluxbox

while true; do
  /usr/bin/google-chrome ${URL} ${CHROME_ARGS} --lang=${LANGUAGE}>/dev/null
done
