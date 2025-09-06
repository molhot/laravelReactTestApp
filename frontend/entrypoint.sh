#!/bin/sh
set -e

# React プロジェクトが存在しなければ作成
if [ ! -f package.json ]; then
  echo "Creating React app with Vite..."
  npm create vite@latest . -- --template react
fi

# 依存関係をインストール
npm install

# Vite 開発サーバーを起動
exec npm run dev -- --host 0.0.0.0
