
# Caddy2Plus
Fork of the latest non-beta Caddy v2 Docker image with plugins included in the build

![Docker Image CI](https://github.com/BiosPlus/Caddy2Plus/workflows/Docker%20Image%20CI/badge.svg)


## Modules included:
| Module source | Included? | What's the error? |
|--|--|--|
github.com/abiosoft/caddy-exec | ✅ | 
github.com/abiosoft/caddy-hmac | ✅ | 
github.com/abiosoft/caddy-json-parse | ✅ | 
github.com/abiosoft/caddy-json-schema | ✅ | 
github.com/abiosoft/caddy-named-routes | ✅ | 
github.com/abiosoft/caddy-yaml | ✅ | 
github.com/awoodbeck/caddy-toml-adapter | ✅ | 
github.com/caddy-dns/cloudflare | ✅ | 
github.com/caddy-dns/gandi | ✅ | 
github.com/caddy-dns/route53 | ✅ | 
github.com/caddyserver/cache-handler | ✅ |
github.com/caddyserver/circuitbreaker | ❌ | This module has been removed from GH (2020/06/19)
github.com/caddyserver/cue-adapter | ✅ | 
github.com/caddyserver/format-encoder | ✅ | 
github.com/caddyserver/forwardproxy | ✅ | 
github.com/caddyserver/json5-adapter | ✅ | 
github.com/caddyserver/jsonc-adapter | ✅ | 
github.com/caddyserver/nginx-adapter | ✅ | 
github.com/caddyserver/ntlm-transport | ✅ | 
github.com/greenpau/caddy-auth-portal | ✅ | 
github.com/greenpau/caddy-auth-jwt | ✅ | 
github.com/greenpau/caddy-auth-saml | ✅ | 
github.com/hairyhenderson/caddy-teapot-module | ✅ | 
github.com/hairyhenderson/caddyprom | ✅ | 
github.com/iamd3vil/caddy_yaml_adapter | ❌ | This module is broken on build - Invalid version number (2020/06/19)
github.com/learnaddict/chiot | ❌ | This module is empty - No point in adding (2020/06/19)
github.com/lucaslorentz/caddy-docker-proxy | ❌ | This module is broken on build - Invalid version number (2020/06/19)
github.com/mholt/caddy-dynamicdns | ✅ | 
github.com/mholt/caddy-webdav | ✅ | 
github.com/nwhirschfeld/client_cert_matcher | ✅ | 
github.com/sjtug/caddy2-filter | ✅ | 
github.com/vrongmeal/caddygit | ✅ | 


## Usage

```
   docker create \
     --name caddy2plus \
     -p 80:80 \
     -p 443:443 \
     -v site:/usr/share/caddy
     -v caddy_data:/data \
     -v caddy_config:/config \
     -v /dir/to/Caddyfile:/etc/caddy/Caddyfile \
     -e ACME_AGREE=true \
     biosplus/caddy2plus 
```

## Requesting modules
    To have a module added to the build, raise an issue or pull request.
