#!/usr/bin/env bash

# 即時失効APIの実行
echo "::add-mask::${TOKEN}" # ログマスク
curl --location --silent --request DELETE \
  --url "${GITHUB_API_URL}/installation/token" \
  --header "Accept: application/vnd.github+json" \
  --header "X-GitHub-Api-Version: 2022-11-28" \
  --header "Authorization: Bearer ${TOKEN}"
