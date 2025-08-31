# Dockerfile para WAHA (WhatsApp HTTP API)
FROM node:18-alpine

# Diretório de trabalho
WORKDIR /app

# Instala dependências do sistema
RUN apk add --no-cache git

# Clona o repositório WAHA
RUN git clone https://github.com/WAHA-WAHA/WAHA.git . 

# Instala dependências do projeto
RUN npm install

# Expõe a porta padrão do WAHA
EXPOSE 3000

# Comando para iniciar o WAHA
CMD ["npm", "start"]