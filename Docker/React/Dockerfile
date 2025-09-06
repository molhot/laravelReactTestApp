FROM node:20

WORKDIR /app

# React プロジェクト作成（初回のみ）
RUN if [ ! -f /app/package.json ]; then \
      npx create-react-app . ; \
    fi

EXPOSE 3000
CMD ["npm", "start"]
