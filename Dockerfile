FROM hypriot/rpi-alpine-scratch:v3.4

RUN apk --no-cache add \
  bash \
  samba-common-tools samba

COPY run.sh /run.sh
RUN chmod u+x /run.sh

EXPOSE 445 137 138 139

ENTRYPOINT ["/run.sh"]
CMD ["-h"]
