#Referencing this list https://caddy.community/t/list-of-caddy-2-modules/7839
#Thanks to SlothCroissant for the initial breakdown on how to do this.

FROM caddy:builder AS builder

RUN xcaddy build \
    --with github.com/abiosoft/caddy-exec \
    --with github.com/abiosoft/caddy-hmac \
    --with github.com/abiosoft/caddy-json-parse \
    --with github.com/abiosoft/caddy-json-schema \
    --with github.com/abiosoft/caddy-named-routes \
    --with github.com/abiosoft/caddy-yaml \
    --with github.com/aksdb/caddy-cgi/v2 \
    --with github.com/caddy-dns/cloudflare \
    --with github.com/caddy-dns/dnspod \
    --with github.com/caddy-dns/gandi \
    --with github.com/caddy-dns/route53 \
    --with github.com/caddyserver/jsonc-adapter \
    --with github.com/caddyserver/nginx-adapter \
    --with github.com/caddyserver/ntlm-transport \
    --with github.com/chukmunnlee/caddy-openapi \
    --with github.com/francislavoie/caddy-hcl \
    --with github.com/gamalan/caddy-tlsredis \
    --with github.com/greenpau/caddy-auth-jwt \
    --with github.com/greenpau/caddy-auth-portal \
    --with github.com/greenpau/caddy-trace \
    --with github.com/hairyhenderson/caddy-teapot-module \
    --with github.com/hslatman/caddy-openapi-validator \
    --with github.com/lolPants/caddy-requestid \
    --with github.com/lucaslorentz/caddy-docker-proxy/plugin/v2 \
    --with github.com/mastercactapus/caddy2-proxyprotocol \
    --with github.com/mholt/caddy-webdav \
    --with github.com/porech/caddy-maxmind-geolocation \
    --with github.com/pteich/caddy-tlsconsul \
    --with github.com/silinternational/certmagic-storage-dynamodb/v2 \
    --with github.com/ss098/certmagic-s3


FROM caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy

#Building this means I'm not responsible for anything, if there's a vulnerability then that's your problem.