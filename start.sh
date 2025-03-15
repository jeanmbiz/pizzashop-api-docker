#!/bin/bash

# Função para verificar se o banco de dados está pronto
wait_for_db() {
  echo "Aguardando o banco de dados ficar disponível..."
  while ! nc -z postgres 5432; do
    sleep 1
  done
  echo "Banco de dados disponível!"
}

# Aguarda o banco de dados ficar pronto
wait_for_db

# Aplica as migrações
echo "Aplicando migrações..."
bun run migrate

# Popula o banco de dados com dados iniciais (seed)
echo "Executando seed..."
bun run seed

# Inicia o servidor Bun em modo de desenvolvimento
echo "Iniciando servidor Bun..."
bun run dev