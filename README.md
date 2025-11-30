# robosys2025
ロボットシステム学

このリポジトリは、2025 年度ロボットシステム学の課題で作成した 締切ソーター (Deadline Sorter) を含みます。
標準入力から課題名と締切日を読み取り、今日の日付との差を計算して残り日数の順にソートして表示するプログラムです。

🔧 使用方法（Usage）
実行方法:
$ ./deadline_sorter.sh < input.txt

入力形式:

入力は以下の形式で、1 行につき「課題名」+「半角スペース」+「YYYY-MM-DD」の日付：

課題1 2025-12-01
課題2 2025-11-30
課題3 2025-12-10

出力例:
Today is 2025-11-30
課題2: 0 days left
課題1: 1 days left
課題3: 10 days left

🧪 テスト実行（Testing）

本リポジトリには動作確認用スクリプトが含まれています。

テスト実行方法:
$ ./test_deadline.bash


テスト内容：

正常入力で 3 行の "days left" が出るか

空入力でエラー終了するか
-（必要に応じて）不正フォーマットの検出

🔁 GitHub Actions (CI)

$ .github/workflows/test_deadline.yml により、GitHub 上で自動的にテストが実行されます。

Push または Pull Request を行うと、自動で以下が確認されます：

deadline_sorter.sh が正しく動作するか

test_deadline.bash のテストが通るか

📁 ファイル構成

 deadline_sorter.sh        # 締切ソーター本体
 test_deadline.bash        # テストスクリプト
 test_input.txt            # テスト用の入力データ
 COPYING                   # ライセンス（GNU GPL v3）
 README.md                 # このファイル

📜 ライセンス（License）

このリポジトリは GNU General Public License v3.0 のもとで公開されています。
詳細は COPYING を参照してください。
© 2025 DUONG HUYEN

### 外部コードの使用 (External Code Usage)

このパッケージは、標準的な Unix/Linux コマンド（例：`date`, `sort`, `awk`）のみを使用しており、外部のライブラリや第三者のコードは利用していません。

👤 作者（Author):
24C1069
DUONG HUYEN (ズオン フエン)
千葉工業大学 未来ロボティクス学科

🚀 メモ:
この README は作成されたプロジェクト内容にもとづき、ロボットシステム学のレポート形式に合わせて構成されています。
