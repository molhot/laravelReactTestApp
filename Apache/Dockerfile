FROM httpd:2.4

# ビルド成果物を Apache の公開ディレクトリにコピー
COPY --from=build /app/dist/ /usr/local/apache2/htdocs/

# 必要なら conf ファイルを追加して SPA ルーティング対応
COPY ./apache.conf /usr/local/apache2/conf/httpd.conf