FROM node:20 AS build

WORKDIR /app

# 依存関係をインストール
COPY package*.json ./
RUN npm install

# ソースをコピーしてビルド
COPY . .
RUN npm run build