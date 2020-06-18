#Referencing this list https://caddy.community/t/list-of-caddy-2-modules/7839
#Thanks to SlothCroissant for the initial breakdown on how to do this.

FROM caddy:builder AS builder

RUN caddy-builder \
    github.com/caddy-dns/cloudflare \
    github.com/caddy-dns/gandi \
    github.com/caddy-dns/route53
        
FROM caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
