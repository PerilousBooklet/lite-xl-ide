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
- [] LSP/Linting/Snippets support for most programming languages
- [x] Custom devicons plugin for the project treeview (uses fontello and is based on the svg files from the nonicons plugin)
- [x] VSCode-like minimap
- [x] Project-wide text string search
- [x] Project-wide filename search
- [x] Integrated terminal
- [x] Multi-cursor editing
- [x] Single/multi-line commenting with shortcuts
- [x] Todo tree view
- [x] Git integration
- [x] Remote markdown renderer (uses Github's API)
- [x] Local markdown renderer (uses the `luamd` library) <!-- TODO: add support for tables and todo-check boxes -->
- [] Foldable code blocks <!-- WIP: Adam's working on it -->
- [] Document symbols treeview <!-- WIP: Jgmdev's working on it -->
- [] Code formatters <!-- WIP -->
- [] Support goto-definition/implementation for java decompiled libraries
- [] Quick code runner (Es. python notebook) <!-- WIP -->
- [] Paste converting from JSON to Typescript <!-- TODO: maybe a fork of `exec`? -->
- [x] Go to line n command
- [] Simultaneous tag rename for html, xml, tex <!-- WIP: tex works, html and xml are missing -->
- [] Code definition preview upon hovering (like for TailwindCSS in VSCode)
- [] Project-wide refactoring (rename files and references: class, method, constructor, ...)
- [] Multi-threaded find/replace/refactor
- [] Project template manager
- [] Builder integration
  - [x] make
  - [] gradle
  - [] maven
- [] Debugger integration
  - [x] gdb
- [] Tmux integration
- [] Gradle tasks dedicated side-menu

## Language support progress
| Language         | Syntax High. | LSP support | Linting | Snippets | Builder | Debugger| Formatter |
|------------------|:--------------:|:-------------:|:---------:|:----------:|:-----------:|:---------:|:---------:|
| Arduino |  |  |  |  |  |  |  |
| Bash |v | v | v |  |  |  |  |
| C# | v |  |  |  |  |  |  |
| C/C++ | v | v | v |  | v | v |  |
| Crystal | v | v |  |  |  |  |  |
| CSS | v | v |  |  |  |  |  |
| Elixir | v | v |  |  |  |  |  |
| ELM | v |  |  |  |  |  |  |
| Erlang | v |  |  |  |  |  |  |
| Go | v | v |  |  |  |  |  |
| Groovy | v |  |  |  |  |  |  |
| Haskell | v | v |  |  |  |  |  |
| HTML | v | v |  |  |  |  |  |
| Java | v | v | v |  |  |  |  |
| JS | v | v |  |  |  |  |  |
| JSON | v | v | v |  |  |  |  |
| Julia | v |  |  |  |  |  |  |
| Kotlin |  |  |  |  |  |  |  |
| Lisp | v |  |  |  |  |  |  |
| Lua | v | v | v |  |  |  |  |
| Nim | v |  |  |  |  |  |  |
| Ocaml | v |  |  |  |  |  |  |
| Odin | v | v | v |  |  |  |  |
| OpenSCAD |  |  |  |  |  |  |  |
| Perl | v | v |  |  |  |  |  |
| PHP | v | v | v |  |  |  |  |
| Python | v | v | v |  |  |  |  |
| R | v | v | v |  |  |  |  |
| Ruby | v |  |  |  |  |  |  |
| Rust | v | v |  |  |  |  |  |
| Scala | v |  |  |  |  |  |  |
| SQL | v | v | v |  |  |  |  |
| Swift | v |  |  |  |  |  |  |
| TeX | v | v | v |  |  |  |  |
| TS | v | v |  |  |  |  |  |
| Vala |  |  |  |  |  |  |  |
| XML | v | v | v |  |  |  |  |
| Zig | v | v |  |  |  |  |  |

## Credits
- https://github.com/lite-xl/lite-xl-colors
- https://github.com/lite-xl/lite-xl-plugins
- https://github.com/lite-xl/lite-xl-lsp
- https://github.com/lite-xl/lite-xl-scm
- https://github.com/adamharrison/lite-xl-ide
- https://github.com/liquidev/lintplus
- https://github.com/drmargarido/linters
- https://github.com/vqns/lite-xl-snippets
- https://github.com/adamharrison/lite-xl-terminal
- https://github.com/drmargarido/TodoTreeView
- https://github.com/jgmdev/lite-xl-threads
- https://github.com/vincens2005/lite-formatters

And many more...
