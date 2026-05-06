FROM caddy:2-builder-alpine AS builder
RUN xcaddy build \
    --with github.com/caddyserver/replace-response

FROM caddy:2-alpine
COPY --from=builder /usr/bin/caddy /usr/bin/caddy
COPY Caddyfile /etc/caddy/Caddyfile
COPY theme.css /srv/theme.css