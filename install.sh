#!/usr/bin/bash

# Arduino
sudo pacman -Syu arduino-language-server

# Assembly x86_64
paru -S asm-lsp

# AWK
paru -S awk-language-server

# Bash
sudo pacman -Syu bash-language-server shellcheck

# C/C++
sudo pacman -Syu clang

# C#/F#
sudo pacman -Syu dotnet-sdk
paru -S omnisharp-roslyn-bin
paru -S fsharp-language-server

# Clojure
paru -S clojure-lsp-bin

# Crystal
paru -S crytalline-bin

# CSS
sudo pacman -Syu vscode-css-languageserver

# D
paru -S serve-d-bin
sudo pacman -Syu dub

# Dart
sudo pacman -Syu dart

# Elixir
paru -S elixir-ls

# Elm
paru -S elm-language-server

# Erlang
# WIP: package still not in the AUR
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
paru -S emmet-language-server

# Java
paru -S jdtls

# JSON
sudo pacman -Syu vscode-json-languageserver

# Julia
# NOTE: open the julia console and install the lsp server
julia
# ]
# add LanguageServer

# Kotlin
paru -S kotlin-language-server

# Lisp
sudo pacman -Syu roswell

# Lua
paru -S lua-language-server-git

# Markdown
sudo pacman -Syu marksman

# Nim
paru -S choosenim-bin
choosenim stable
nimble install nimlsp

# Ocaml
sudo pacman -S opam
opam init -y
echo "test -r '/home/raffaele/.opam/opam-init/init.sh' && . '/home/raffaele/.opam/opam-init/init.sh' > /dev/null 2> /dev/null || true" >> ~/.bashrc
opam install ocaml-lsp-server odoc ocamlformat utop
opam install user-setup

# Odin
paru -S odinls

# OpenSCAD
paru -S openscad-lsp

# Perl
paru -S perlnavigator

# PHP
paru -S nodejs-intelephense

# Python
sudo pacman -Syu python-lsp-server flake8

# R
paru -S r-languageserver

# Ruby
# NOTE: https://wiki.archlinux.org/title/RVM
gem install ruby-lsp

# Rust
lpm install lsp_rust # or sudo pacman -Syu rustup

# Scala
paru -S jdk17-openjdk scala scala-docs scala-sources
sudo archlinux-java set java-17-openjdk
paru -S metals

# SQL
paru -S sql-language-server

# TailwindCSS
sudo pacman -Syu tailwindcss-language-server

# TeX
sudo pacman -Syu texlive-most
paru -S texlab-bin
sudo pacman -Syu texlive-binextra perl-yaml-tiny perl-file-homedir

# TOML
sudo pacman -S taplo-cli

# Typescript
sudo pacman -Syu typescript-language-server

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
