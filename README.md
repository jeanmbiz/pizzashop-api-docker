# 🍕 pizza.shop API

Aplicativo de entrega de comida (também conhecido como iFood/Uber Eats) back-end construído com TypeScript, Drizzle e ElysiaJS.

## Executando

O Docker para configurar o banco de dados. Com o Docker instalado, clone o projeto, instale as dependências, configure os contêineres Docker e execute a aplicação.

O Docker sobe o projeto, o banco de dados, faz as migrates, popula o banco de dados com "seed" e roda o projeto.

Basta Executar:

```sh
docker compose up -d
```

#### Nao esquecer de trocar o seu email no arquivo seed.ts