# brunoborges.eti.br
# Usa imagem oficial do Node.js
FROM node:18-alpine

# Define diretório de trabalho
WORKDIR /app

# Instala dependências do sistema
RUN apk add --no-cache python3 make g++ 

# Clona o repositório oficial do N8N
RUN git clone https://github.com/n8n-io/n8n.git .

# Instala dependências do N8N
RUN npm install --production

# Expõe a porta padrão do N8N
EXPOSE 5678

# Inicia o N8N
CMD ["n8n"]