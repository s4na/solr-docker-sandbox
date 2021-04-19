# Apache Solr Sandbox

## 使い方

### Docker ComposeでSolr containerの起動

```sh
docker-compose up
```

※ dockerfileファイルを更新したら、以下のコマンドでリビルドしないと変更が反映されません。

```sh
docker-compose build
```

### techproducts の起動

```sh
docker-compose exec solr-app bash
bin/solr start -p 8983 -e techproducts
bin/solr stop
```

## 参考

ドキュメント
https://solr.apache.org/guide/6_6/

ダウンロードページ
https://archive.apache.org/dist/lucene/solr/
