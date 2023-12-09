#!/bin/bash

# Install all configuration files
cp -vr ~/.config/lite-xl ~/.config/lite-xl.old # Backup previous configuration
rm -vrf ~/.config/lite-xl/* # Remove current configuration
cp -vr ./colors ./fonts ./libraries ./plugins ./init.lua ~/.config/lite-xl/  # Copy new configuration

# Install all language servers
paru -S lua-language-server-git # Lua
pacman -S shellcheck npm	# Bash
npm i -g bash-language-server
paru -S texlab-bin # TeX
pacman -S ccls # C/C++
paru -S jdtls # Java
pacman -S python-lsp-server # Python
pacman -S vscode-html-languageserver # HTML
pacman -S vscode-css-languageserver # CSS
#? # Javascript
#? # PHP
pacman -S vscode-json-languageserver # JSON
#? # R
paru -S rust-analyzer-git # Rust

# Install build frameworks
pacman -S make cmake gcc clang scons # C/C++
pacman -S maven gradle # Java
pacman -S meson # Rust

# Install debuggers
pacman -S gdb # Assembly, C/C++, Go, Rust
#? # Java

# Install decompilers
#? # Java (for Minecraft mods)
