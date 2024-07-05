# hands-on-github-cicd

『GitHub CI/CD実践ガイド』ハンズオン用のリポジトリです。

## トラブルシューティング

個人的に躓いた事項をメモ

### 「[コード5.13 Environmentsのデータ参照](/.github/workflows/environments.yml)」がActionsタブの一覧上に表示されない

* 原因：当該YAMLファイルがデフォルトブランチに存在していないため
* https://qiita.com/chihiro/items/8b2918ceb709cb9079e8#%E6%B3%A8%E6%84%8F より：
  * > ワークフローを手動で実行するためには、ワークフロー(ymlファイル)がデフォルトブランチに含まれていないといけません。

### 6.5.3で切り出したシェルスクリプトが実行できない

* 具体的には：「Permission denied」エラーとなっている (エラーコード126)
  * [エラーログ](https://github.com/ytak-sagit/hands-on-github-cicd/actions/runs/9809665624/job/27088104596)
    ```bash
    /home/runner/work/_temp/e25ba6e2-3e93-41f7-8f12-2fafa1168950.sh: line 1: /home/runner/work/hands-on-github-cicd/hands-on-github-cicd/./.github/actions/dump//sort-env.sh: Permission denied
    Error: Process completed with exit code 126.
    ```
* 原因：シェルスクリプトファイルの実行権限がなかったため
* 対応方法：実行前に実行権限を付与する
  ```bash
  # 実行権限の付与
  chmod +x script.sh

  # 実行
  script.sh
  ```
