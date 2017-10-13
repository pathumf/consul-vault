FROM alpine:3.5

ENV VAULT_VERSION 0.8.3
ENV VAULT_ADDR=http://127.0.0.1:8200
LABEL name="vault"
LABEL version=0.8.3

# x509 expects certs to be in this file only.
RUN apk --update --no-cache add ca-certificates openssl && \
  wget -qO /tmp/vault.zip "https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip" && \
  unzip -d /bin /tmp/vault.zip && \
  chmod 755 /bin/vault && \
  rm /tmp/vault.zip /var/cache/apk/* && \
  mkdir -p /config/ssl

ADD ./vault.hcl /config/vault.hcl
ADD ./key_file.key /config/ssl/key_file.key
ADD ./cert_file.cer /config/ssl/cert_file.cer
ADD ./vault.sh /usr/bin/vault.sh

RUN chmod +x /usr/bin/vault.sh

EXPOSE 8200 8243
VOLUME "/config"

ENTRYPOINT ["/usr/bin/vault.sh"]
CMD []


