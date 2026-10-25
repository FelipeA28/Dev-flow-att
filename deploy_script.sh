#!/bin/bash

# Entrar na pasta da aplicação
cd /var/www/my-app || exit 1

# Baixar as atualizações do GitHub
git pull origin main

# Instalar as dependências de produção
npm install --omit=dev

# Reiniciar a aplicação
pm2 restart all