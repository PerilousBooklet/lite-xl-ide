# Lite XL IDE Documentation
Note: this guide is specific to Arch Linux only.

## Adding language-specific intellisense support

### Arduino

`sudo pacman -S arduino-language-server`

### Bash

`sudo pacman -S bash-language-server shellcheck`

### C#
`sudo pacman -S dotnet-sdk`

`paru -S omnisharp-roslyn-bin`

### C/C++

`lpm install lsp_c`

### Clojure

`paru -S clojure-lsp-bin`

### Crystal

`paru -S crystalline-bin`

### CSS

`sudo pacman -S vscode-css-languageserver`

### D
`paru -S serve-d-bin`

`sudo pacman -S dub`

### Dart

`sudo pacman -S dart`

### Elixir

`paru -S elixir-ls`

### Elm

`paru -S elm-language-server`

### Erlang

`paru -S erlang-ls` WIP

### F#

`sudo pacman -S dotnet-sdk`

`paru -S fsharp-language-server`

### Go

`sudo pacman -S gopls`

### Groovy

`paru -S groovy-language-server-git`

### Haskell

`sudo pacman -S haskell haskell-language-server`

### HTML

`sudo pacman -S vscode-html-languageserver`

### Java

`paru -S jdtls`

### JSON

`sudo pacman -S vscode-json-languaserver`

### Javascript

### Julia

`sudo pacman -S julia`

`julia`

`]add LanguageServer`

### Kotlin

`paru -S kotlin-language-server`

### Lisp

### Lua

`lpm install lsp_lua`

### Nim

### Nix

### OCaml

```sh
sudo pacman -S ocaml opam
opam init
opam install dune
opam install ocaml-lsp-server
```

### Odin

`paru -S odinls`

### OpenSCAD

### Perl

`paru -S perlnavigator`

### PHP

`paru -S nodejs-intelephense`

### Python

`sudo pacman -S python-lsp-server flake8`

### R
`sudo pacman -S r`

`paru -S r-languageserver`

### Ruby

Install `rvm` by following [official guide](https://wiki.archlinux.org/title/RVM).

Install the latest ruby version:
```sh
sudo rvm install 1.9.2
```

Install the `ruby-lsp` LSP server as a gem:
```sh
gem install ruby-lsp
```

### Rust

`lpm install lsp_rust`

### Scala

Install the language and necessary dependencies for `metals`:
```sh
paru -S jdk17-openjdk scala scala-docs scala-sources
```

Set Java 17 as the default version:
```sh
sudo archlinux-java set java-17-openjdk
```

Install the `metals` LSP server:
```sh
paru -S metals
```

### SQL

`paru -S sql-language-server`

### Svelte

### Tailwind

`sudo pacman -S tailwindcss-language-server`

### TeX

`lpm install lsp_tex`

`sudo pacman -S texlive-binextra`

### Typescript

`paru -S typescript-language-server`

### Typst

`paru -S typst-lsp`

### V
`paru -S v-analyzer-bin`

### XML

`paru -S lemminx`

### Zig

`lpm install lsp_zig`
