#!/usr/bin/bash

# Bash
sudo pacman -Syu bash-language-server

# C/C++
sudo pacman -Syu clang

# Clojure
paru -S clojure-lsp-bin

# Crystal
paru -S crytalline-bin

# C#
paru -S omnisharp-roslyn

# CSS
sudo pacman -Syu vscode-css-languageserver

# D
paru -S serve-d

# Dart
sudo pacman -Syu dart

# Elixir
paru -S elixir-ls

# Elm
paru -S elm-language-server

# Erlang
paru -S erlang_ls

# Fortran
paru -S fortls

# Go
sudo pacman -Syu gopls

# Groovy
paru -S groovy-language-server-git

# Haskell
sudo pacman -Syu haskell-language-server

# HTML
sudo pacman -Syu vscode-html-languageserver

# Java
paru -S jdtls

# Typescript
sudo pacman -Syu typescript-language-server

# JSON
sudo pacman -Syu vscode-json-languageserver

# Julia
julia && ]add LanguageServer

# Kotlin
paru -S kotlin-language-server

# Lua
paru -S lua-language-server-git

# Nim
nimble install nimlsp

# Ocaml
sudo pacman -S opam
opam init -y
echo "test -r '/home/raffaele/.opam/opam-init/init.sh' && . '/home/raffaele/.opam/opam-init/init.sh' > /dev/null 2> /dev/null || true" >> ~/.bashrc
opam install ocaml-lsp-server odoc ocamlformat utop
opam install user-setup

# Odin
paru -S odinls

# Perl
paru -S perlnavigator

# PHP
paru -S nodejs-intelephense

# Python
sudo pacman -Syu python-lsp-server

# R
paru -S r-languageserver

# Ruby
gem install ruby-lsp

# Rust
lpm install lsp_rust

# Scala
paru -S metals

# SQL
paru -S sql-language-server

# LaTeX
paru -S texlab

# TOML
sudo pacman -S taplo-cli

# Typst
paru -S typst-lsp-bin

# Vala
paru -S vala-language-server

# V
paru -S v-analyzer-bin

# XML
paru -S lemminx

# Zig
sudo pacman -Syu zls

# YAML
sudo pacman -Syu yaml-language-server
