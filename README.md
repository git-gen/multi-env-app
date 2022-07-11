# multi-env-app

localで複数環境のrailsを立てる為のアプリ
中身はシンプルなショッピングアプリ

## build

```bash
$ docker-compose build
```

## migration

```bash
$ docker-compose run -e DB_HOST=db1 app1 rails db:migrate
$ docker-compose run -e DB_HOST=db2 app2 rails db:migrate
$ docker-compose run -e DB_HOST=db3 app3 rails db:migrate
```

## up

```bash
$ docker-compose up -d
```

## Qiita

https://qiita.com/devgeeeen/items/bf93cfffa650a1afee0e
