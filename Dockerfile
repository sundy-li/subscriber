FROM tindy2013/subconverter:latest

COPY pref.toml /base/pref.toml
COPY snippets/ /base/snippets/
COPY config/ /base/config/
COPY profiles/ /base/profiles/
COPY acl4ssr/Clash/ /base/acl4ssr/

EXPOSE 25500
