# nginx-ssl
 Projeto Nginx com HTTPS (SSL Autoassinado) para 3 Sites
Este projeto configura um servidor Nginx com suporte a HTTPS (SSL autoassinado) rodando em containers Docker, servindo três sites diferentes:

🔗 matheus.local

🔗 pedro.local

🔗 lindeberg.local


🔧 Pré-requisitos

 Docker instalado

 Docker Compose instalado

 Gerando os Certificados SSL
Execute no terminal dentro da pasta do projeto:

bash
Copiar
Editar
mkdir
 certs

# Certificado para matheus.local

openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
-keyout certs/matheus.key -out certs/matheus.crt \
-subj 
"/C=BR/ST=RN/L=Natal/O=Matheus/CN=matheus.local"


# Certificado para pedro.local

openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
-keyout certs/pedro.key -out certs/pedro.crt \
-subj 
"/C=BR/ST=RN/L=Natal/O=Pedro/CN=pedro.local"


# Certificado para lindeberg.local

openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
-keyout certs/lindeberg.key -out certs/lindeberg.crt \
-subj 
"/C=BR/ST=RN/L=Natal/O=Lindeberg/CN=lindeberg.local"

 Configurando o Arquivo Hosts
Adicione as seguintes linhas no seu arquivo de hosts:

Linux/macOS: /etc/hosts

Windows: C:\Windows\System32\drivers\etc\hosts

lua
Copiar
Editar
127.0
.0
.1
 matheus.
local

127.0
.0
.1
 pedro.
local

127.0
.0
.1
 lindeberg.
local

# Como Rodar
 
1️  Construa a imagem:
bash
Copiar
Editar
docker-compose build

2️  Suba o container:
bash
Copiar
Editar
docker-compose up -d

3️  Acesse no navegador:

🔗 https://matheus.local:8443

🔗 https://pedro.local:8443

🔗 https://lindeberg.local:8443

⚠️ O navegador exibirá um aviso de "Não seguro" devido ao uso de SSL autoassinado. Isso é normal em ambiente de desenvolvimento.

  Como Parar
bash
Copiar
Editar
docker-compose down
