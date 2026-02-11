FROM node:20-alpine

WORKDIR /app

# Instala npx globalmente se necessário
RUN npm install -g npx

# Copia env vars (Dokploy injeta automaticamente)
COPY . .

# Comando de start: roda o MCP server oficial
CMD ["npx", "@zilliztech/claude-context-mcp@latest"]
