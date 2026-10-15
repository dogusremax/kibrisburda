#!/bin/sh
# dogusportal.com/kibris.html sayfasini alip assets yollarini dogusportal.com'a cevirerek index.html uretir.
curl -fsSL https://dogusportal.com/kibris.html \
 | sed -e 's#\([("'"'"'`]\)assets/#\1https://dogusportal.com/assets/#g' > index.html
