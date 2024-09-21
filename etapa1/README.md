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
