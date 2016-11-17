# 7 Proof-of-Importance

> 熱い夜だった。我々がクロームを爆撃したのは。
> - William Gibson

PROOF-OF-IMPORTANCE (PoI、重要度の証明) とは、NEMの使用しているブロックチェーンコンセンサスアルゴリズムの名称です。各アカウントは重要度スコア(Importance Score)と呼ばれるものを割り振られます。これはNEM経済圏の中の総合的な重要度がどれくらいであるかを指し示すものです。
重要度スコアが高いブロックほど採掘の可能性が高まります。（セクション 5: [ブロックとブロックチェーン](5_Blockchain.md)を参照）NEMでは全てのトランザクションが誰からでも見れるので、NEM内でのトランザクションのグラフは正確に計算することができます。そのグラフのトポロジーをもとに、アカウントの重要度を計算することができる。というのがProof-of-Importanceの核となる洞察でした。

NEMブロックチェーンプラットフォームでは全てのトランザクションを見ることができます。このアカウント間での価値の送信の記録から、アカウントの重要度を算出するのです。
グラフ内においてノードの持つ重要度、突出性がそれぞれ違うということに気づいたのは、なにも我々が最初というわけではありません。
検索[^11]、ソーシャルネットワーク[^1]、ストリートネットワーク[^7]、神経科学[^6]などといった分野において、グラフ理論のコミュニティからは洗練されたノードの重要度の計算方法が論文化されてきました。
ここから、グラフ理論的な方法をブロックチェーンのコンセンサスアルゴリズムの中核に据えようという発想が生まれ、これがNEMの中心的なイノベーションとなりました。
トランザクションのグラフを定義している行列はアウトリンク行列と呼ばれ、PoIの計算に用いられるので特に重要です。


[^1]: Lars Backstrom and Jure Leskovec. Supervised random walks: predicting and recommending links in social networks. In Proceedings of the fourth ACM international conference on Web search and data mining, pages 635–644. ACM, 2011.
[^6]: Tayfun G¨urel, Luc De Raedt, and Stefan Rotter. Ranking neurons for mining structure-activity relations in biological neural networks: Neuronrank. Neurocomputing, 70(10):1897–1901, 2007.
[^7]: Bin Jiang. Ranking spaces for predicting human movement in an urban environment. International Journal of Geographical Information Science, 23(7):823–837, 2009.
[^11]: Lawrence Page, Sergey Brin, Rajeev Motwani, and Terry Winograd. The pagerank citation ranking: bringing order to the web. Technical Report 1999-66, Stanford InfoLab, Stanford, USA, November 1999
