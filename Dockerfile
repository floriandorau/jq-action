FROM alpine:3.9

LABEL "com.github.actions.name"="jq-action"
LABEL "com.github.actions.description"="jq provided as a Github action"
LABEL "com.github.actions.icon"="box"
LABEL "com.github.actions.color"="red"

LABEL "repository"="https://github.com/floriandorau/jq-action"
LABEL "maintainer"="Florian Dorau <fdorau@it-economics.de>"

RUN apk add jq

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]