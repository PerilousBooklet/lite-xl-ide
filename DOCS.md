## Manual intellisense install for Arch Linux

### Arduino

`sudo pacman -S arduino-language-server`

### Bash

`sudo pacman -S bash-language-server shellcheck`

### C#
`sudo pacman -S dotnet-sdk`

`paru -S omnisharp-roslyn-bin`

### C/C++

`sudo pacman -S clang`

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

`paru -S erlang-ls` WIP: package still not in the AUR

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

`paru -S emmet-language-server`

### Java

`paru -S jdtls`

### JSON

`sudo pacman -S vscode-json-languaserver`

### Javascript

`paru -S typescript-language-server`

### Julia

`sudo pacman -S julia`

`julia`

`]`

`add LanguageServer`

### Kotlin

`paru -S kotlin-language-server`

### Lisp

`sudo pacman -S roswell`

### Lua

`sudo pacman lua-language-server luacheck`

### Nim
```sh
paru -S choosenim-bin
choosenim stable
nimble install nimlsp
```

### Nix

### OCaml

```sh
sudo pacman -S ocaml opam
opam init
opam install core core_bench utop
opam install dune
opam install ocaml-lsp-server
```

`paru -S ocaml-ocp-indent`

### Odin

`paru -S odinls`

### OpenSCAD

`sudo pacman -S openscad`

`paru -S openscad-lsp`

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

Install `rvm` by following the [official guide](https://wiki.archlinux.org/title/RVM).

Install the latest ruby version:
`sudo rvm install 1.9.2`

Install the `ruby-lsp` LSP server as a gem:
`gem install ruby-lsp`

### Rust

`sudo pacman -S rustup`

### Scala

Install the language and necessary dependencies for `metals`:
`paru -S jdk17-openjdk scala scala-docs scala-sources`

Set Java 17 as the default version:
`sudo archlinux-java set java-17-openjdk`

Install the `metals` LSP server:
`paru -S metals`

### SQL

`paru -S sql-language-server sql-formatter`

### Svelte

### Tailwind

`sudo pacman -S tailwindcss-language-server`

### TeX

`sudo pacman -S texlive-most`

`paru -S texlab-bin`

`sudo pacman -S texlive-binextra perl-yaml-tiny perl-file-homedir`

### Typescript

`paru -S typescript-language-server`

### Typst

`paru -S typst-lsp`

### V
`paru -S v-analyzer-bin`

### XML

`paru -S lemminx`

### YAML

`sudo pacman -S yaml-language-server`

### Zig

`sudo pacman -S zig zls`
