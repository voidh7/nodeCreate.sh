#!/bin/bash

echo "📦 Nome do projeto:"
read projeto

mkdir "$projeto"
cd "$projeto" || exit

echo "Inicializando projeto com npm..."
npm init -y

echo "🔗 Dependências (separadas por espaço, ou Enter para nenhuma):"
read deps

if [ ! -z "$deps" ]; then
  npm install $deps
fi

echo "🛠 Dependências de desenvolvimento (ou Enter para nenhuma):"
read devDeps

if [ ! -z "$devDeps" ]; then
  npm install -D $devDeps
fi

echo "Criando arquivo index.js..."
cat <<EOF > index.js
console.log("Projeto $projeto iniciado!");
EOF

echo "✅ Projeto '$projeto' criado com sucesso!"
