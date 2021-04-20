Solritasをみてみる

http://localhost:8983/solr/techproducts/browse

コアを作ってみる

```
bin/solr create_core -c solrbook -d basic_configs
```

schemaを登録してみる
https://github.com/solrbook3/examples を参考に登録

```
curl -X POST -H 'Content-type:application/json' --data-binary @solrbook_schema.json http://localhost:8983/solr/solrbook/schema
```
