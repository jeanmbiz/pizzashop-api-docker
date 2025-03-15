# Use a imagem oficial do Bun como base
FROM oven/bun:1.0.0

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Instala o netcat (necessário para o script start.sh)
RUN apt-get update && apt-get install -y netcat && rm -rf /var/lib/apt/lists/*

# Copia o package.json e bun.lockb para o diretório de trabalho
COPY package.json bun.lockb ./

# Instala as dependências do projeto
RUN bun install

# Copia o restante do código do projeto para o diretório de trabalho
COPY . .

# Copia o script start.sh para o container
COPY start.sh /app/start.sh

# Torna o script executável
RUN chmod +x /app/start.sh

# Expõe a porta que o servidor Bun vai usar
EXPOSE 3334

# Comando para rodar o script de inicialização
CMD ["./start.sh"]