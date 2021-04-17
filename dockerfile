FROM adoptopenjdk/openjdk8

RUN groupadd -r solr-user && useradd -r -g solr-user solr-user
WORKDIR /app
COPY /solr /app
COPY entrypoint.sh /

EXPOSE 8983

# Solrをrootユーザーで実行するとベストプラクティスではないと怒られるるため
USER solr-user

CMD [ "/entrypoint.sh" ]
