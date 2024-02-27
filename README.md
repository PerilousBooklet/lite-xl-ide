# Lite XL IDE setup

## Introduction

A set of plugins and configuration files that aims to turn `Lite XL` into a proper IDE.

This project is still WIP.

## Installation

Arch Linux (requires the `paru` AUR helper):
```sh
git clone "https://github.com/PerilousBooklet/lite-xl-ide.git"
cd ./lite-xl-ide
./install.sh
```

## Features

- [x] Syntax highlighting for 70+ programming and configuration languages
- [x] LSP/Linting/Snippets support for the most used programming languages
- [x] Custom devicons plugin for the project treeview (uses fontello and is based on the svg files from the nonicons plugin)
- [x] VSCode-like minimap
- [x] Project-wide text string search
- [x] Project-wide filename search
- [x] Integrated terminal
- [x] Multi-cursor editing
- [x] Single/multi-line commenting with shortcuts
- [x] Go to line n command
- [x] Todo tree view
- [x] Git integration
- [x] Remote markdown renderer (uses Github's API)
- [x] Local markdown renderer (uses the `luamd` library) <!-- TODO: add support for tables and todo-check boxes -->
- [x] Code block definition preview on hover (like for TailwindCSS in VSCode)
- [x] Builder integration
- [x] Debugger integration
- [] Foldable code blocks
- [] Horizontal scrolling for project treeview
- [] Document symbols treeview
- [] Code formatters
- [] Support goto-definition/implementation for java decompiled libraries
- [] Quick code runner (Es. python notebook) <!-- WIP -->
- [] Paste converting from JSON to Typescript <!-- TODO: maybe a fork of `exec`? -->
- [] Simultaneous tag rename <!-- WIP: tex works, html and xml are missing -->
- [] Project-wide refactoring (rename files and references: class, method, constructor, ...)
- [] Multi-threaded find/replace/refactor
- [] Project template manager
- [] Gradle tasks dedicated commandview
- [] Tmux integration

## Language support progress

| Language         | Syntax High. | LSP support | Linting | Snippets | Builder | Debugger| LSP Bundle |
|------------------|:--------------:|:-------------:|:---------:|:----------:|:-----------:|:---------:|:---------:|
| Arduino |  |  |  |  |  |  |  |
| Bash |<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|  |  |  |
| C# |<span>&#10004;</span>|  |  |<span>&#10004;</span>|  |  |  |
| C/C++ |<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|
| Crystal |<span>&#10004;</span>|<span>&#10004;</span>|  |  |  |  |  |
| CSS |<span>&#10004;</span>|<span>&#10004;</span>|  |<span>&#10004;</span>|  |  |  |
| Elixir |<span>&#10004;</span>|<span>&#10004;</span>|  |<span>&#10004;</span>|  |  |  |
| ELM |<span>&#10004;</span>|  |  |  |  |  |  |
| Erlang |<span>&#10004;</span>|  |  |<span>&#10004;</span>|  |  |  |
| Go |<span>&#10004;</span>|<span>&#10004;</span>|  |<span>&#10004;</span>|  |  |  |
| Groovy |<span>&#10004;</span>|  |  |  |  |  |  |
| Haskell |<span>&#10004;</span>|<span>&#10004;</span>|  |<span>&#10004;</span>|  |  |  |
| HTML |<span>&#10004;</span>|<span>&#10004;</span>|  |<span>&#10004;</span>|  |  |  |
| Java |<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|  |  |  |
| JS |<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|  |  |  |
| JSON |<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10008;</span>|  |  |  |
| Julia |<span>&#10004;</span>|  |  |<span>&#10004;</span>|  |  |  |
| Kotlin |  |  |  |<span>&#10004;</span>|  |  |  |
| Lisp |<span>&#10004;</span>|  |  |  |  |  |  |
| Lua |<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|  |  |  |<span>&#10004;</span>|
| Nim |<span>&#10004;</span>|  |  |  |  |  |  |
| Nix |<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|  |  |  |
| Ocaml |<span>&#10004;</span>|  |  |<span>&#10004;</span>|  |  |  |
| Odin |<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|  |  |  |  |
| OpenSCAD |  |  |  |  |  |  |  |
| Perl |<span>&#10004;</span>|<span>&#10004;</span>|  |<span>&#10004;</span>|  |  |  |
| PHP |<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|  |  |  |
| Python |<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|  |  |  |
| R |<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|  |  |  |
| Ruby |<span>&#10004;</span>|  |  |<span>&#10004;</span>|  |  |  |
| Rust |<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|  |  |<span>&#10004;</span>|
| Scala |<span>&#10004;</span>|  |  |<span>&#10004;</span>|  |  |  |
| SQL |<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|  |  |  |
| Svelte |<span>&#10004;</span>|<span>&#10004;</span>|  |<span>&#10004;</span>|  |  |  |
| Swift |<span>&#10004;</span>|  |  |<span>&#10004;</span>|  |  |  |
| Tailwind |<span>&#10004;</span>|<span>&#10004;</span>|  | <span>&#10008;</span> |  |  |  |
| TeX |<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|  |  |<span>&#10004;</span>|
| TS |<span>&#10004;</span>|<span>&#10004;</span>|  |  |  |  |  |
| Typst |  |<span>&#10004;</span>|<span>&#10004;</span>|  |  |  |  |
| Vala |  |  |  |  |  |  |  |
| XML |<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|  |  |  |  |
| Zig | <span>&#10004;</span> | <span>&#10004;</span> |  |  |  |  | <span>&#10004;</span> |

## Language-specific setup guide

### C/C++

`lpm install ide`

### Lua

`lpm install lsp_lua`

### Rust

`lpm install lsp_rust`

### TeX

`lpm install lsp_tex`

### Zig

`lpm install lsp_zig`

## Credits

- https://github.com/lite-xl/lite-xl-colors
- https://github.com/lite-xl/lite-xl-plugins
- https://github.com/lite-xl/lite-xl-lsp
- https://github.com/liquidev/lintplus
- https://github.com/vqns/lite-xl-snippets
- https://github.com/lite-xl/lite-xl-scm
- https://github.com/adamharrison/lite-xl-ide
- https://github.com/adamharrison/lite-xl-terminal
- https://github.com/drmargarido/TodoTreeView
- https://github.com/jgmdev/lite-xl-threads
- https://github.com/vincens2005/lite-formatters
- And many more...

