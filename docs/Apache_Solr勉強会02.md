## Solritasをみてみる

http://localhost:8983/solr/techproducts/browse

## コアを作ってみる

```
bin/solr create_core -c solrbook -d basic_configs
```

## schemaを登録してみる
https://github.com/solrbook3/examples を参考に登録

```
curl -X POST -H 'Content-type:application/json' --data-binary @solrbook_schema.json http://localhost:8983/solr/solrbook/schema
```


確認（URL間違ってるけど、確認するのはsolrbook）
http://localhost:8983/solr/#/techproducts/schema?field=author

## indexingをしてみる

```
curl "http://localhost:8983/solr/solrbook/update?commit=true" --data-binary @sample-books.json -H 'Content-type:text/json; charset=utf-8'
```


http://localhost:8983/solr/#/solrbook/query


Filesでどこのファイルを参照しているかわかる

Overviewでみたいな感じでわかる
CWD:/app/serverInstance:/app/example/techproducts/solr/solrbookData:/app/example/techproducts/solr/solrbook/dataIndex:/app/example/techproducts/solr/solrbook/data/indexImpl:org.apache.solr.core.NRTCachingDirectoryFactory

