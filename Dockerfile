FROM fabfuel/ecs-deploy:master

LABEL author="Donald Piret <@donaldpiret>"

WORKDIR /

RUN apk add jq

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
