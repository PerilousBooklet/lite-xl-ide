# Lite XL IDE Setup

> [!WARNING]
> This repository may be outdated.
> The information stored here will eventually be moved to the [new website](https://takase.top/lite-xl-docs/user-guide/introduction/)

## Introduction

Documentation for a set of plugins and configuration files that aims to turn [Lite XL](https://takase.top/lite-xl-docs/) into a proper IDE.

(This project is still WIP.)

This repository no longer contains an install script to setup Lite XL IDE.

Instead, I am working on adding IDE bundle metapackages to [Adam's repo](https://github.com/PerilousBooklet/lite-xl-ide-adam).

This way, if I wanted to install an IDE setup for Java or Python, I could just run one simple command in the terminal, like `lpm install ide_java` or `lpm install ide_python`.

With such a command, `lpm` (Lite XL's own package manager') would take care of installing executable files for LSP servers, linters, formatters and IDE-related plugins.

One thing to keep in mind though, is that at the moment the ideal distribution to use a Lite XL IDE manual setup on is Arch Linux (or a derivative), because all the lsp
servers, linters and formatters have a correspondent arch package, either in the official repo or in the AUR.

## Table of Contents

1. [Installation](#installation)
2. [Features](#features)
3. [Development Boards](#development-boards)
4. [Language Support Status](#language-support-status)
5. [LSP Bundle Support Status](#lsp-bundle-support-status)
6. [Credits](#credits)

## Installation

### Install colors and languages

```sh
lpm install meta_colors meta_languages
```

### Install my custom `devicons` plugin

```sh
lpm add https://github.com/PerilousBooklet/lite-xl-devicons.git
lpm install devicons
```

### Install the basic IDE plugins

```sh
lpm install ide
```

or a language-specific ide metapackage: e.g. `lpm install ide_c` for C/C++ development.

### Install some more plugins

`lpm install "exec" markers extend_selection_line sort titleize`

### Install an LSP server

[Installation Guide](https://takase.top/lite-xl-docs/user-guide/lsp/#manual-installation)

The LSP servers names can be found in [here](https://github.com/lite-xl/lite-xl-lsp/blob/master/config.lua).

### Some other IDE setup steps

Enable automatic linting upon opening and saving a file by adding the following code inside of `USERDIR/init.lua`:
```lua
local lintplus = require "plugins.lintplus"
lintplus.setup.lint_on_doc_load()  -- enable automatic linting upon opening a file
lintplus.setup.lint_on_doc_save()  -- enable automatic linting upon saving a file
```

Add code snippets by downloading the JSON files from this repo's `snippets` folder into a `USERDIR/plugins/snippets/json` folder and then writing the following code inside of `USERDIR/init.lua`:
```lua
local lsp_snippets = require "plugins.lsp_snippets"
lsp_snippets.add_paths {'plugins/snippets/json'}
```

Allow `format-on-save` by adding the following code to the `init.lua`:
```lua
config.format_on_save = true
```

## Features
- [x] Syntax highlighting for 100+ languages
- [x] Intellisense support for 50+ languages (WIP)
- [x] Custom project treeview devicons
- [x] VSCode-like minimap
- [x] Project-wide text string search
- [x] Project-wide filename search
- [x] Multi-cursor editing
- [x] Single/multi-line commenting with shortcuts
- [x] Go to line n command
- [x] Todo treeview
- [x] Code block definition preview on hover (like for TailwindCSS in VSCode)
- [x] Integrated terminal
- [x] Git integration (WIP)
- [x] Builder integration (WIP)
- [x] Debugger integration (WIP)
- [x] Markdown support via [mdpreview](https://github.com/Not-a-web-Developer/lite-xl-mdpreview)

### WIP
- [ ] Foldable code blocks
- [ ] Horizontal scrolling for project treeview
- [ ] Ligatures support
- [ ] Github Copilot integration
- [ ] Custom Canvas API to allow an external renderer to draw on a surface that Lite XL will render on screen

### TODO
- [ ] Document symbols treeview
- [ ] Support goto-definition/implementation for external libraries (es. java, minecraft mods)
- [ ] External libraries item in project treeview
- [ ] Simultaneous tag rename
- [ ] Project-wide refactoring
- [ ] Project template manager

## Development Boards

- [Intellisense](https://github.com/users/PerilousBooklet/projects/6/views/1)
- [Utilities](https://github.com/users/PerilousBooklet/projects/7/views/1)
- [Build Integration](https://github.com/users/PerilousBooklet/projects/8/views/1)
- [Debug Integration](https://github.com/users/PerilousBooklet/projects/9/views/1)
- [Profiling Integration](https://github.com/users/PerilousBooklet/projects/10/views/1)

## Language support status

| Language | Syntax High. | LSP support | Linting | Snippets | Formatter | Builder | Debugger |
|------------------|:--------------:|:-------------:|:---------:|:----------:|:----------:|:-----------:|:---------:|
| Arduino | :check_mark: |  |  |  |  |  |  |
| Bash | :check_mark: | :check_mark: | :check_mark: ex | :check_mark: | :check_mark: |  |  |
| C# | :check_mark: | :check_mark: | :check_mark: | :check_mark: |  |  |  |
| C/C++ | :check_mark: | :check_mark: | :check_mark: | :check_mark: | :check_mark: | :check_mark: |:check_mark:|
| Clojure | :check_mark: | :check_mark: | :check_mark: |  | :check_mark: |  |  |
| Cobol |  |  |  |  |  |  |  |
| Crystal | :check_mark: | :check_mark: \* |  |  | :check_mark: |  |  |
| CSS | :check_mark: | :check_mark: |  | :check_mark: | :check_mark: |  |  |
| D | :check_mark: | :check_mark: | :check_mark: |  | :check_mark: |  |  |
| Dart | :check_mark: | :check_mark: | :check_mark: |  | :check_mark: |  |  |
| Elixir | :check_mark: | :check_mark: |  | :check_mark: | :check_mark: |  |  |
| Elm | :check_mark: | :check_mark: | :check_mark: |  | :check_mark: |  |  |
| Erlang | [WIP](https://github.com/lite-xl/lite-xl-plugins/pull/424) | :check_mark: | :check_mark: \* | :check_mark: |  |  |  |
| F# | [WIP](https://github.com/lite-xl/lite-xl-plugins/pull/423) |  |  |  |  |  |  |
| Fortran | :check_mark: | :check_mark: |  |  |  |  |  |
| GDScript | :check_mark: |  |  |  | :check_mark: |  |  |
| Go | :check_mark: | :check_mark: |  | :check_mark: | :check_mark: |  |  |
| Groovy | :check_mark: | :check_mark: \* | :check_mark: |  |  |  |  |
| Haskell | :check_mark: | :check_mark: |  | :check_mark: | :check_mark: |  |  |
| HTML | :check_mark: | :check_mark: |  | :check_mark: | :check_mark: |  |  |
| Java | :check_mark: | :check_mark: | :check_mark: | :check_mark: | :check_mark: |  |  |
| Javascript | :check_mark: | :check_mark: | :check_mark: | :check_mark: | :check_mark: |  |  |
| JSON | :check_mark: | :check_mark: | :check_mark: |/|  |  |  |
| Julia | :check_mark: | :check_mark: \* |  | :check_mark: | :check_mark: |  |  |
| Kotlin | :check_mark: | :check_mark: | :check_mark: | :check_mark: |  |  |  |
| Lisp |  |  |  |  |  |  |  |
| Lua | :check_mark: | :check_mark: | :check_mark: ex | :check_mark: | :check_mark: |  |  |
| Nim | :check_mark: | :check_mark: \* | :check_mark: \* |  |  |  |  |
| Nix | :check_mark: |  |  | :check_mark: |  |  |  |
| Ocaml | [WIP](https://github.com/lite-xl/lite-xl-plugins/pull/429) | :check_mark: | :check_mark: | :check_mark: | :check_mark: |  |  |
| Odin | :check_mark: | :check_mark: | :check_mark: |  |  |  |  |
| OpenSCAD | :check_mark: |  |  |  |  |  |  |
| Perl | :check_mark: | :check_mark: |  | :check_mark: |  |  |  |
| PHP | :check_mark: | :check_mark: | :check_mark: ex | :check_mark: |  |  |  |
| Python | :check_mark: | :check_mark: | :check_mark: | :check_mark: | :check_mark: |  |  |
| R | :check_mark: | :check_mark: | :check_mark: | :check_mark: |  |  |  |
| Ruby | :check_mark: | :check_mark: |  | :check_mark: | :check_mark: |  |  |
| Rust | :check_mark: | :check_mark: | :check_mark: | :check_mark: | :check_mark: |  |  |
| Scala | :check_mark: | :check_mark: | :check_mark: | :check_mark: |  |  |  |
| SQL | :check_mark: | :check_mark: | :check_mark: | :check_mark: | :check_mark: |  |  |
| System Verilog |  |  |  |  |  |  |  |
| TeX | :check_mark: | :check_mark: | :check_mark: | :check_mark: |  |  |  |
| TOML | :check_mark: | :check_mark: | :check_mark: | / | :check_mark: |  |  |
| Typescript | :check_mark: | :check_mark: |  |  |  |  |  |
| Typst | :check_mark: | :check_mark: \* | :check_mark: |  |  |  |  |
| V | :check_mark: | :check_mark: |  |  | :check_mark: |  |  |
| Vala | [WIP](https://github.com/lite-xl/lite-xl-plugins/pull/432) | :check_mark: \* | :check_mark: |  |  |  |  |
| Zig | :check_mark: | :check_mark: | :check_mark: ex |  | :check_mark: |  |  |
| XML | :check_mark: | :check_mark: | :check_mark: | / |  |  |  |
| YAML | :check_mark: | :check_mark: | :check_mark: | / | :check_mark: |  |  |

`*`: there are still some problems to solve

`ex`: external linter

## LSP bundle support status

| Language         | LSP Bundle | LSP Bundle Package | IDE Package |
|------------------|:--------------:|:-------------:|:-------------:|
| Arduino |  |  |  |
| Bash |  |  |  |
| C# |  |  |  |
| C/C++ | :check_mark: | `lsp_c` | `ide_c` |
| Clojure |   |  |  |
| Crystal |  |  |  |
| CSS |  |  |  |
| Dart |  |  |  |
| Elixir |  |  |  |
| ELM |  |  |  |
| Erlang |  |  |  |
| Go |  |  |  |
| Groovy |  |  |  |
| Haskell |  |  |  |
| HTML |  |  |  |
| Java | :check_mark: | `lsp_java` | `ide_java` |
| Javascript | :check_mark: | `lsp_typescript` | `ide_javascript` |
| JSON | :check_mark: | `lsp_json` |  |
| Julia |  |  |  |
| Kotlin |  |  |  |
| Lisp |  |  |  |
| Lua | :check_mark: | `lsp_lua` | `ide_lua` |
| Nim |  |  |  |
| Nix |  |  |  |
| Ocaml |  |  |  |
| Odin |  |  |  |
| OpenSCAD |  |  |  |
| Perl |  |  |  |
| PHP |  |  |  |
| Python | :check_mark: | `lsp_python` | `ide_python` |
| R |  |  |  |
| Ruby |  |  |  |
| Rust | :check_mark: | `lsp_rust` | `ide_rust` |
| Scala |  |  |  |
| SQL |  |  |  |
| TeX | :check_mark: | `lsp_tex` | `ide_tex` |
| Typescript | :check_mark: | `lsp_typescript` |  |
| Typst |  |  |  |
| XML |  |  |  |
| YAML | :check_mark: | `lsp_yaml` |  |
| Zig | :check_mark: | `lsp_zig` | `ide_zig` |

## Credits

- https://github.com/lite-xl/lite-xl-colors
- https://github.com/lite-xl/lite-xl-plugins
- https://github.com/lite-xl/lite-xl-lsp
- https://github.com/vincens2005/lite-formatters
- https://github.com/liquidev/lintplus
- https://github.com/vqns/lite-xl-snippets
- https://github.com/lite-xl/lite-xl-scm
- https://github.com/adamharrison/lite-xl-ide
- https://github.com/adamharrison/lite-xl-terminal
- https://github.com/drmargarido/TodoTreeView
- https://github.com/jgmdev/lite-xl-threads
- And many more...
