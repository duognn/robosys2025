# Deadline Sorter

標準入力から課題名と締切日を読み取り、今日の日付との差を計算して残り日数の順にソートして表示するコマンドラインツールです。
(A command-line tool that reads task names and deadlines from standard input, calculates the remaining days, and outputs them sorted by deadline.)

## 動作環境 (Requirement)
* Linux environment (Ubuntu, etc.)
* Bash

## 使用方法 (Usage)
リポジトリをクローンし、実行権限を与えてパイプでデータを渡してください。
(Clone the repository, add execution permission, and pass data via pipe.)

```bash
# 1. クローン (Clone)
git clone [https://github.com/duognn/robosys2025.git](https://github.com/duognn/robosys2025.git)
cd robosys2025

# 2. 実行権限付与と実行 (Add permission and Run)
chmod +x deadline_sorter
cat test_input.txt | ./deadline_sorter

入出力例 (Example)

$ cat test_input.txt
課題1 2025-12-01
課題2 2025-11-30
課題3 2025-12-10

$ cat test_input.txt | ./deadline_sorter
課題2 2025-11-30 (0 days left)
課題1 2025-12-01 (1 days left)
課題3 2025-12-10 (10 days left)

## テスト (Test)

本リポジトリには動作確認用スクリプト `test_deadline.bash` が含まれています。

```bash
./test_deadline.bash
```

  * 正常な入力で正しくソートされるか
  * 空の入力や不正なフォーマットをエラーとして処理するか
    を確認します。

## GitHub Actions

`.github/workflows/test_deadline.yml` により、Push または Pull Request のたびに自動テストが実行されます。

## ライセンス (License)

このソフトウェアは、GNU General Public License v3.0 (GPL-3.0) の下で公開されています。
詳細は [COPYING] を参照してください。

## 著作権 (Copyright)

Copyright (c) 2025 DUONG HUYEN

-----

*Note: This repository was created for the "Robot Systems" assignment at Chiba Institute of Technology.*

```
```
