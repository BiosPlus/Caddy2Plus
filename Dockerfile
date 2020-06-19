#Referencing this list https://caddy.community/t/list-of-caddy-2-modules/7839
#Thanks to SlothCroissant for the initial breakdown on how to do this.

FROM caddy:builder AS builder

RUN caddy-builder \
    github.com/caddy-dns/cloudflare \
    github.com/caddy-dns/gandi \
    github.com/caddy-dns/route53 \
    github.com/greenpau/caddy-auth-forms \
    github.com/greenpau/caddy-auth-jwt \
    github.com/greenpau/caddy-auth-saml \
    github.com/abiosoft/caddy-exec \
    github.com/abiosoft/caddy-hmac \
    github.com/abiosoft/caddy-json-parse \
    github.com/abiosoft/caddy-json-schema \
    github.com/abiosoft/caddy-named-routes \
    github.com/abiosoft/caddy-yaml \
    github.com/caddyserver/cache-handler \
    github.com/caddyserver/circuitbreaker \
    github.com/caddyserver/format-encoder \
    github.com/caddyserver/forwardproxy \
    github.com/caddyserver/json5-adapter \
    github.com/caddyserver/jsonc-adapter \
    github.com/caddyserver/nginx-adapter \
    github.com/caddyserver/ntlm-transport \
    github.com/mholt/caddy-dynamicdns \
    github.com/mholt/caddy-webdav \
    github.com/hairyhenderson/caddy-teapot-module
        
FROM caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
