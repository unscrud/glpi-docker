# Teste do nginx

Esta etapa está sendo usada para familiarização com o nginx.

## Execução

Para apenas rodar o container e testar o nginx use `docker run --name nginx-test --rm -p 80:80 nginx:1.27-alpine`.

A tag da imagem é apenas uma sugestão. Foi dada a preferência a uma imagem oficial mais leve, usando alpine linux.

### Conexão com o container

O nginx dispõe de uma CLI que pode ser usada durante a excecução do container com o comando `docker exec -it nginx-test sh` para entrar no container e então usar `nginx -h` por exemplo.

O parâmetro -h, geralmente usado como ajuda na maioria das CLI, também fornece os locais de arquivos de configuração e logs do nginx.

### Configuração

Poderíamos modificar os arquivos de configuração no container, mas essas alterações seriam perdidas caso o container seja removido.

## Dockerfile

O dockerfile da etapa contém um conteúdo e uma configuração que vai além do comportamento padrão, servir o conteúdo na porta 8080.

### Build

Para executar o build do dockerfile execute o comando `docker build -t etapa1 .`

A seguir, para executar a etapa, use `docker run --name nginx-test --rm -p 80:80 -p 8080:8080 etapa1`

O container vai servir o html padrão na porta 80 e o html personalizado na porta 8080, conforme a configuração injetada no container.
