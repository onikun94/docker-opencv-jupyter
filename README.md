# How to use

## xquartz のインストール

[https://www.xquartz.org/](https://www.xquartz.org/)

## .env ファイルの追加

ルートディレクトリに.env ファイルを作成し以下内容を追加

```makefile
DISPLAY=host.docker.internal:0
```

## 初回 or dockerfile を書き換えた時の起動

```makefile
make build
```

## 起動(通常時)

```makefile
make up
```

localhost:8000 にアクセス

## コンテナに入る＆ token の設定

```makefile
make exec
```

```bash
workspace# jupyter server list
```

token=に記載されている内容を localhost:8000 にて設定パスワードを各自設定．

初回以降パスワードでログイン．
