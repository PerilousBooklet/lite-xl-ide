# Lite XL IDE setup

## Introduction
A set of plugins and configuration files that aims to turn `Lite XL` into a proper IDE.

This project is still WIP.

## Installation
Arch Linux (requires the `paru` AUR helper):
```sh
git clone https://github.com/PerilousBooklet/lite-xl-ide.git
cd ./lite-xl-ide
sudo ./install.sh
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
- [x] Remote markdown renderer (uses Github's API')
- [] Local markdown renderer (uses the `luamd` library) <!-- TODO: add support for tables and todo-check boxes -->
- [] Foldable code blocks
- [] Document symbols treeview
- [] Code formatter
- [] Find string match and create a cursor for every match, one at a time (additional multi-cursor editing)
- [] View downloaded dependencies/modules (es. Eclipse J.E. jar libraries, node modules)
- [] Quick code runner (Es. python notebook)
- [] Paste converting from JSON to Typescript
- [] Move-to-line-n command
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

## Language support progress
| Language         | Syntax High. | LSP support | Linting | Snippets | Formatter | Builder | Debugger|
|------------------|:--------------:|:-------------:|:---------:|:----------:|:-----------:|:---------:|:---------:|
| C/C++ | v | v | v | wip |  | v | v |
| Java | v | v | v | wip |  |  |  |
| Python | v | v | v | wip |  |  |  |
| HTML | v |  |  |  |  |  |  |
| CSS | v |  |  |  |  |  |  |
| JS | v |  |  |  |  |  |  |
| TS | v |  |  |  |  |  |  |
| PHP | v | v | v |  |  |  |  |
| JSON | v | v | v |  |  |  |  |
| SQL | v | v | v |  |  |  |  |
| Lua | v | v | v |  |  |  |  |
| Bash |v | v | v |  |  |  |  |
| TeX | v | v | v |  |  |  |  |

