#!/bin/sh
# dogusportal.com/kibris.html sayfasini alip index.html uretir:
# assets ve gizlilik.html yollarini dogusportal.com'a cevirir. SEO adresleri (canonical, hreflang, og:url) kaynakta zaten kibrisburda.com.
curl -fsSL https://dogusportal.com/kibris.html \
 | sed -e 's#\([("'"'"'`]\)assets/#\1https://dogusportal.com/assets/#g' \
       -e 's#href=gizlilik\.html#href=https://dogusportal.com/gizlilik.html#g' > index.html
