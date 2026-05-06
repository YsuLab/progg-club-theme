FROM caddy:2-alpine
COPY Caddyfile /etc/caddy/Caddyfile
COPY theme.css /srv/theme.css