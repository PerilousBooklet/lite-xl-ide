# Lite XL IDE setup

## Introduction
A set of plugins and configuration files that aims to turn `Lite XL` into a proper IDE.

WARNING: it's a work in progress.

## Installation
GNU/Linux:
```sh
git clone https://github.com/PerilousBooklet/lite-xl-ide.git
cd ./lite-xl-ide
./install.sh
```

## Features
- [x] Syntax highlighting for 70+ programming and configuration languages
- [x] Custom devicons plugin for the project treeview (uses fontello and is based on the svg files from the nonicons plugin)
- [x] VSCode-like minimap
- [x] Project-wide text string search
- [x] Project-wide filename search
- [x] Integrated terminal
- [x] Multi-cursor editing
- [x] Single/multi-line commenting with shortcuts
- [x] Todo tree view
- [x] Git integration
- [] Tmux integration
- [] Docker integration
- [x] Simple markdown renderer (in-browser)
- [] Foldable code blocks
- [] Document symbols tree view (eclipse-like)
- [] Code formatter
- [] Find string match and create a cursor for every match, one at a time (additional multi-cursor editing)
- [] View downloaded dependencies/modules (es. Eclipse J.E. jar libraries, node modules)
- [] Java package auto-import (ctrl+shift+o)
- [] Quick code runner (Es. python notebook)
- [] Paste converting from JSON to Typescript
- [] Move-to-line-n command
- [] Simultaneous tag rename for html, xml, tex <!-- WIP: tex works, html and xml are missing -->
- [] Code definition preview upon hovering (like for TailwindCSS in VSCode)
- [] Project-wide refactoring
- [] Multi-threaded find/replace/rename
- [] Builder integration
  - [x] make
  - [] gradle
  - [] maven
- [] Debugger integration
  - [x] gdb
- [] Decompiler integration for Java
  - [] cfr
  - [] procyon
- [] Project template manager

## Language support progress
- Lua
  - [x] syntax highlighting
  - [x] lsp server
  - [x] linting
  - [] snippets
- Bash
  - [x] syntax highlighting
  - [x] lsp server
  - [] linting
  - [] snippets
- C/C++
  - [x] syntax highlighting
  - [x] lsp server
  - [x] linting
  - [] snippets
- Java
  - [x] syntax highlighting
  - [x] lsp server
  - [x] linting
  - [] snippets
- Python
  - [x] syntax highlighting
  - [x] lsp server
  - [] linting
  - [] snippets
- HTML
  - [x] syntax highlighting
  - [x] lsp server
  - [] linting
  - [] snippets
- CSS
  - [x] syntax highlighting
  - [x] lsp server
  - [] linting
  - [] snippets
- Javascript
  - [x] syntax highlighting
  - [] lsp server
  - [] linting
  - [] snippets
- PHP
  - [x] syntax highlighting
  - [] lsp server
  - [] linting
  - [] snippets
- TeX
  - [x] syntax highlighting
  - [x] lsp server
  - [] linting
  - [] snippets
