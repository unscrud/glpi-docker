# Projeto GLPI com Docker

## Visão Geral

Este projeto contém etapas para criação de um docker-compose.yml para subir o projeto GLPI.

## Etapas de Teste e criação

Cada diretório contém testes usados para criar a etapa seguinte.

### 1. Etapa 1: Teste do Nginx

Primeiramente foi executado um pequeno teste executando uma imagem nginx, exibindo a mensagem "Olá mundo".

Por possuir apenas um dockerfile, é necessário usar o docker build e depois o docker run.

### 2. Etapa 2: Teste do Nginx com o PHP

O propósito da segunda etapa é testar o uso do nginx com php exibindo um phpinfo.

Para executar, basta utilizar o docker compose para subir o teste.

### 3. Etapa 3: Criação de imagem docker PHP

Esta etava foi focada em criar uma imagem docker baseada na imagem oficial do php com a tag 8.2-fpm, contendo as dependências elencadas nos pré-requisitos da [documentação do GLPI](https://glpi-install.readthedocs.io/en/latest/prerequisites.html#php).

Para usar a imagem realize o build do dockerfile ou use a disponível no [Docker Hub](https://hub.docker.com/r/danieldevop/php-para-glpi).

### 4. Etapa 4: Testando a imagem criada

Aqui é realizado um teste da imagem do php que foi enviada para o docker hub.

### 5. Etapa 5: Configuração de Variáveis de Ambiente

Finalmente foi criado um docker-compose.yaml funcional. Este diretório deve ser usado para testar o GLPI. Basta baixar o arquivo comprimido na [página oficial do GLPI](https://glpi-project.org) e extrair no diretório www e executar a etapa com docker compose up
