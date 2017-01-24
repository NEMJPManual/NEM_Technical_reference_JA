# NEM_Technical_reference_JA

[NEM Technical Reference](https://www.nem.io/NEM_techRef.pdf) の和訳

翻訳後文書は[こちら](http://nemmanual.net/NEM_Technical_reference_JA/)

翻訳の指針などは`CONTRIBUTING.md`を参照

### 文書の生成

gitbookを使っています。
下記のコマンドで`_book`にhtmlをビルドします。

```

npm install -g gitbook-cli
gitbook install # katexをインストール
make
make serve # ローカルブラウザ上で確認

```

数式のレンダリングに[Katex](https://khan.github.io/KaTeX/)を使っていますので、あらかじめインストールする必要があります。
