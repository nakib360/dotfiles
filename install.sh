#!/bin/bash

echo "Installing VS Code extensions..."

extensions=(
dbaeumer.vscode-eslint
esbenp.prettier-vscode
bradlc.vscode-tailwindcss
dsznajder.es7-react-js-snippets
xabikos.ReactSnippets
formulahendry.auto-rename-tag
formulahendry.auto-close-tag
christian-kohler.path-intellisense
yoavbls.pretty-ts-errors
usernamehw.errorlens
eamodio.gitlens
GitHub.copilot
GitHub.copilot-chat
ms-vscode.vscode-typescript-next
ms-vscode.live-server
rangav.vscode-thunder-client
ms-azuretools.vscode-docker
firebase.firebase-vscode
)

for extension in "${extensions[@]}"
do
  code --install-extension $extension --force
done

echo "Installing global npm packages..."

npm install -g nodemon
npm install -g firebase-tools
npm install -g yarn

echo "All setup completed!"