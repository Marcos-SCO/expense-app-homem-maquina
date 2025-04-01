# Expense-app-homem-maquina 🚀
Expense app - Homem Máquina test

Um projeto fullstack desenvolvido como teste para Homem Máquina, utilizando o framework Laravel de forma monolítica para construir um CRUD de dados.

<p>Disponível para acesso em: <a href="https://expense-app-crud.x10.mx/" target="_blank">https://expense-app-crud.x10.mx/</a></p>

### Tecnologias Utilizadas 💻

- Docker
- PHP 8.2.12
- Node.js v20.14.0
- Mysql
- Laravel
- Vite
- Sass
- Bootstrap
- Javascript

## Instruções de Uso para rodar localmente 🚀

Este repositório contém arquivos Docker necessários para poder executar o ambiente de desenvolvimento.

## Pré-requisitos 📋

- Docker: Certifique-se de ter o Docker instalado em sua máquina. 


## Configuração do Arquivo .env 🛠️

1. Dentro da pasta `/expense-app`, localize o arquivo `.env.example`.

2. Copie este arquivo e cole na mesma pasta, renomeando-o para `.env`.

3. Abra o arquivo `.env` em um editor de texto.

4. Substitua os valores das variáveis de ambiente conforme necessário para a configuração da sua aplicação.

5. Salve as alterações no arquivo.

### Rode os scripts do front-end 
```bash
npm install

npm run build
```

## Como Usar 🛠️

1. Navegue até o diretório onde os arquivos estão localizados.

2. Certifique-se de que sua aplicação está estruturada corretamente, incluindo todos os arquivos necessários, como `package.json`, `src` e outros, conforme esperado pelo Dockerfile e docker-compose.yml.

3. Na raiz do projeto. Execute o seguinte comando para criar e iniciar os contêineres Docker:

    ```
    docker-compose up -d --build
    ```

Certifique-se de ajustar as configurações de acordo com as necessidades específicas da sua aplicação, como variáveis de ambiente, portas expostas e dependências do contêiner.

## Acesse o container
Estando na raiz, fora da pasta expense-app execute o comando para adentra o container

```bash
docker-compose exec -it web bash
```

```bash
composer install

composer dump-autoload -o
```

### Gere uma nova laravel key
```bash
php artisan key:generate
```
### Execute as migrations e seeds
```bash
php artisan migrate:fresh --seed
```

Localmente a aplicação estará rodado em : http://localhost:8080/