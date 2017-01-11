## ネットワーク

> For what is it? Nothing but a little blood and bones; a piece of network,
> wrought out of nerves, veins, and arteries twisted together.
>
> 一体なんだというのだ？ 小さな血と骨の集合に過ぎぬではないか。
> ひとかけらのネットワーク。神経、静脈、動脈の絡み合いに。
>
> マルクス・アウレリウス・アントニウス 「自省録」

NEMネットワークはNISノードで構成されています。 各ノードは
単一のプライマリアカウントに関連付けられ、ノードの応答を認証するために使用されます。
これにより、ノードのIPアドレスを偽装することができたとしても、秘密鍵のない攻撃者がノードを偽装することを防ぎます。
各NISノードには、次の設定項目があります。

* `nis.nodeLimit` - ローカルノードが情報をブロードキャストすべき他のノードの数
* `nis.timeSyncNodeLimit` - ローカルノードがクロックを同期に使う他のノードの数。[8章　時間の同期](/Timesync/8_Timesync.md)参照


典型的には、より良い時間平滑化(time smoothing)を可能にするため、`nis.timeSyncNodeLimit`は`nis.nodeLimit`より大きい必要があります。
時間同期の一部として送信されるデータは比較的小さいので、 それほど高負荷ではありません。

