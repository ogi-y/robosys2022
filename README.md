# robosys2022
このプログラムはロボットシステム学2022年度の講義で作成されました。

## plusコマンド
![test](https://github.com/ogi-y/robosys2022/actions/workflows/test.yml/badge.svg)

* 標準入力から1行づつ読み込み、数字であれば記号に基づき四則演算をし、文字列であればつなげて出力します。
* 小数点にも対応しています。

## 利用方法
* 四則演算
    * 数値をそのまま入力するか、頭に「+」をつけるとその数値を足します。
    * 頭に「-」をつけると、その数値を引き算します。
    * 頭に「*」をつけると、その数値を掛け算します。
    * 頭に「/」をつけると、その数値を割り算します。
* 文字入力
    * 文字列を入力する場合は、頭に「>」をつけて下さい。
* 出力
    * 「###」と入力するとそこまでの結果を出力し、入力されている値をリセットします。
* その他
    * 数値の計算は上から順に行われるため、掛け算及び割り算が優先して計算されることはありません。
    * 数値と文字列が1行づつ交互に記述されていても、それぞれ分けて処理されます。
    * ターミナルから入力する場合、すべての入力を終えたら「ctrl」と「D」を同時に押して入力を終了してください。
    * ファイルから入力する場合は、「cat 入力するファイル名 | ./plus」等を利用してください。
## 入出力例
* 入力例 1
    * \>(3-1)*4/2=
    * 3
    * -1
    * *4
    * /2
* 出力例 1
    * (3-1)*4/2=
    * 4.0
* 入力例 2
    * \>ここまでの入力を出力するには「###」と打ち込みます。
    * \###
    * \>文字をつなげて
    * \>出力します。
* 出力例 2
    * ここまでの入力を出力するには「###」と打ち込みます。
    * 文字をつなげて出力します。
## 必要なソフトウェア
* Python
    * テスト済み: 3.7～3.10

## テスト環境
* Ubuntu 22.04.1 LTS

## 権利表記
* このソフトウェアパッケージは，[3条項BSDライセンス](https://opensource.org/licenses/BSD-3-Clause)の下，再頒布および使用が許可されます．
* © 2022 Yoshihiro Ogishima
