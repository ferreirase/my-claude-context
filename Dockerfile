FROM node:20-alpine

WORKDIR /app

# npx já existe, não precisa instalar

COPY . .

# Start: roda o servidor MCP oficial
CMD ["npx", "@zilliztech/claude-context-mcp@latest"]
