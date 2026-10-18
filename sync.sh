#!/bin/sh
# dogusportal.com/kibris.html sayfasini alip index.html uretir:
# assets ve gizlilik.html yollarini dogusportal.com'a cevirir. SEO adresleri (canonical, hreflang, og:url) kaynakta zaten kibrisburda.com.
# Analytics: kibrisburda.com kendi GA4 mulkune ("Kıbrıs Burda") yazar, dogusportal.com kimligi (G-CRGBP7JB7P) bununla degistirilir.
KIBRIS_GA=G-SGVPW6Z29C
curl -fsSL https://dogusportal.com/kibris.html \
 | sed -e 's#\([("'"'"'`]\)assets/#\1https://dogusportal.com/assets/#g' \
       -e 's#href=gizlilik\.html#href=https://dogusportal.com/gizlilik.html#g' \
       -e "s#G-CRGBP7JB7P#$KIBRIS_GA#g" > index.html
