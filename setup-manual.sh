#!/bin/bash

# Install lite-xl-terminal
cd ~/build
git clone --depth=1 https://github.com/adamharrison/lite-xl-terminal.git --recurse-submodules --shallow-submodules
cd ./lite-xl-terminal
./build.sh
cp -R ./plugins/terminal ~/.config/lite-xl/plugins
cp ./libterminal.so ~/.config/lite-xl/plugins/terminal

# Install builder/debugger
cd ~/build
git clone https://github.com/adamharrison/lite-xl-ide.git
cp -R ./lite-xl-ide/plugins/build ./lite-xl-ide/plugins/debugger ./lite-xl-ide/plugins/ide.lua ~/.config/lite-xl-/plugins
cd ~/downloads
git clone https://github.com/lite-xl/lite-xl-plugin-manager.git
cp -v ~/downloads/lite-xl-plugin-manager/libraries/json.lua ~/.config/lite-xl/libraries/json.lua
rm -vrf ~/downloads/lite-xl-plugin-manager

# Install LSP manager
# ?

# Install linter
# ?

# Install git integration tools

## SCM
cd ~/build
git clone https://github.com/lite-xl/lite-xl-scm.git ~/.config/lite-xl/plugins/scm

# Install Discord rich presence plugin
git clone https://github.com/TorchedSammy/litepresence ~/.config/lite-xl/plugins/litepresence
cd litepresence
go get
go build

# Install all language servers

# Lua
paru -S lua-language-server-git

# Bash
pacman -S shellcheck
npm i -g bash-language-server # requires sudo

# TeX
paru -S texlab-bin

# C/C++
pacman -S ccls

# Java
paru -S jdtls

# Python
pacman -S python-lsp-server

# HTML
# ...

# CSS
# ...

# Javascript
# ...

# PHP
# ...

# JSON
pacman -S vscode-json-languageserver

# R
# ...

# OpenSCAD
# ...

# Install build frameworks
pacman -S make gcc clang scons # C/C++
pacman -S maven gradle # Java
pacman -S meson # Rust
#pacman -S parcel # for use with tailwind, alpine and npm/yarn

# Install debuggers
pacman -S gdb # Assembly, C/C++, Go, Rust

# Install decompilers
#pacman -S ? # Java
