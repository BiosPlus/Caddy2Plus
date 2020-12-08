#Referencing this list https://caddy.community/t/list-of-caddy-2-modules/7839
#Thanks to SlothCroissant for the initial breakdown on how to do this.

FROM caddy:builder AS builder

RUN caddy-builder \
    github.com/abiosoft/caddy-exec \
    github.com/abiosoft/caddy-hmac \
    github.com/abiosoft/caddy-json-parse \
    github.com/abiosoft/caddy-json-schema \
    github.com/abiosoft/caddy-named-routes \
    github.com/abiosoft/caddy-yaml \
    github.com/aksdb/caddy-cgi/v2 \
    github.com/caddy-dns/cloudflare \
    github.com/caddy-dns/dnspod \
    github.com/caddy-dns/gandi \
    github.com/caddy-dns/route53 \
    github.com/caddyserver/jsonc-adapter \
    github.com/caddyserver/nginx-adapter \
    github.com/caddyserver/ntlm-transport \
    github.com/chukmunnlee/caddy-openapi \
    github.com/francislavoie/caddy-hcl \
    github.com/gamalan/caddy-tlsredis \
    github.com/greenpau/caddy-auth-jwt \
    github.com/greenpau/caddy-auth-portal \
    github.com/greenpau/caddy-trace \
    github.com/hairyhenderson/caddy-teapot-module \
    github.com/hslatman/caddy-openapi-validator \
    github.com/lolPants/caddy-requestid \
    github.com/lucaslorentz/caddy-docker-proxy/plugin/v2 \
    github.com/mastercactapus/caddy2-proxyprotocol \
    github.com/mholt/caddy-webdav \
    github.com/porech/caddy-maxmind-geolocation \
    github.com/pteich/caddy-tlsconsul \
    github.com/silinternational/certmagic-storage-dynamodb/v2 \
    github.com/ss098/certmagic-s3


FROM caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy

#Building this means I'm not responsible for anything, if there's a vulnerability then that's your problem.