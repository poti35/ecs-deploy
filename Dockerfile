FROM fabfuel/ecs-deploy:1.10.2

LABEL author="Donald Piret <@donaldpiret>"

WORKDIR /

RUN pip3 install --upgrade pip boto3
RUN apk add jq

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
