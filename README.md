# hands-on-github-cicd

『GitHub CI/CD実践ガイド』ハンズオン用のリポジトリです。

## トラブルシューティング

個人的に躓いた事項をメモ

### [コード5.13 Environmentsのデータ参照](/.github/workflows/environments.yml)がActionsタブの一覧上に表示されない

* 原因：当該YAMLファイルがデフォルトブランチに存在していないため
* https://qiita.com/chihiro/items/8b2918ceb709cb9079e8#%E6%B3%A8%E6%84%8F より：
  * > ワークフローを手動で実行するためには、ワークフロー(ymlファイル)がデフォルトブランチに含まれていないといけません。
