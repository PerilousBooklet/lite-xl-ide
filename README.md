# Lite XL IDE setup

## Introduction

Documentation for a set of plugins and configuration files that aims to turn [Lite XL](https://takase.top/lite-xl-docs/) into a proper IDE.

(This project is still WIP.)

This repository no longer contains an install script to setup Lite XL IDE.

Instead, I am working on adding IDE bundle metapackages to [Adam's repo](https://github.com/PerilousBooklet/lite-xl-ide-adam).

This way, if I wanted to install and IDE setup for Java or Python, I could just run one simple command in the terminal, like `lpm install ide_java` or `lpm install ide_python`.

With such a command, `lpm` (Lite XL's own package manager') would take care of installing executable files for LSP servers, linters, formatters and IDE-related plugins.

One thing to keep in mind though, is that, at the moment, the ideal distribution to use a Lite XL IDE manual setup on is Arch Linux (or a derivative), because all the lsp
servers, linters and formatters have a correspondent arch package, either in the official repo or in the AUR.

## Table of Contents

1. [Installation](#installation)
2. [Features](#features)
3. [Language Support Status](#language-support-status)
4. [LSP Bundle Support Status](#lsp-bundle-support-status)
5. [Credits](#credits)

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

#### Manual way

Add the following code to `USERDIR/init.lua` (e.g. `lspconfig.clangd.setup()` enables the `clangd` LSP server for C/C++):
```lua
local lsp = require "plugins.lsp"
lspconfig.clangd.setup()
```

Do the same by adding an appropriate `lspconfig.lsp_name.setup()` instruction for every desired language.

The LSP servers names can be found in [here](https://github.com/lite-xl/lite-xl-lsp/blob/master/config.lua).

#### Automated way

Install an lsp bundle from [here](https://github.com/lite-xl/lite-xl-lsp-servers) (e.g. `lpm install lsp_c` for C/C++ development).

### Some other IDE setup steps

Enable automatic linting upon opening and saving a file by adding the following code inside of `USERDIR/init.lua`:
```lua
local lintplus = require \"plugins.lintplus\"
lintplus.setup.lint_on_doc_load()  -- enable automatic linting upon opening a file
lintplus.setup.lint_on_doc_save()  -- enable automatic linting upon saving a file
```

Add code snippets by downloading the JSON files from this repo's `snippets` folder into a `USERDIR/plugins/snippets/json` folder and then writing the following code inside of `USERDIR/init.lua`:
```lua
local lsp_snippets = require \"plugins.lsp_snippets\"
lsp_snippets.add_paths {'plugins/snippets/json'}
```

Allow `format-on-save` by adding the following code to the `init.lua`:
```lua
config.format_on_save = true
```

## Features
- [x] Syntax highlighting for 100+ languages
- [x] Intellisense support for 40+ languages
- [x] Custom project treeview devicons
- [x] VSCode-like minimap
- [x] Project-wide text string search
- [x] Project-wide filename search
- [x] Multi-cursor editing
- [x] Single/multi-line commenting with shortcuts
- [x] Go to line n command
- [x] Todo tree view
- [x] Code block definition preview on hover (like for TailwindCSS in VSCode)
- [x] Integrated terminal
- [x] Git integration
- [x] Builder integration
- [x] Debugger integration
- [x] Markdown support via [ghmarkdown](https://github.com/lite-xl/lite-xl-plugins/blob/master/plugins/ghmarkdown.lua) or [mdpreview](https://github.com/Not-a-web-Developer/lite-xl-mdpreview)

### WIP
- [ ] Foldable code blocks
- [ ] Horizontal scrolling for project treeview
- [ ] Automatic textEdit for in-file dependency reference
- [ ] Ligatures support
- [ ] Github Copilot integration
- [ ] Custom Canvas API to allow an external renderer to draw on a surface that Lite XL will render on screen
- [ ] Markdown renderer integration (`mdpreview` plugin + `canvas` module)

### TODO
- [ ] Document symbols treeview
- [ ] Support goto-definition/implementation for decompiled libraries (es. java, minecraft mods)
- [ ] Simultaneous tag rename
- [ ] Project-wide refactoring
- [ ] Project template manager
- [ ] Tmux integration
- [ ] Docker integration

## Language support status

<!-- check: <span>&#9989;</span> or 1004 -->
<!-- x: <span>&#x274c;</span> or 1008 -->

| Language | Syntax High. | LSP support | Linting | Snippets | Formatter | Builder | Debugger |
|------------------|:--------------:|:-------------:|:---------:|:----------:|:----------:|:-----------:|:---------:|
| Arduino | <span>&#9989;</span> |  |  |  |  |  |  |
| Bash | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> ex | <span>&#9989;</span> | <span>&#9989;</span> |  |  |
| C# | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  |  |  |
| C/C++ | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |<span>&#9989;</span>|
| Clojure | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  | <span>&#9989;</span> |  |  |
| Crystal | <span>&#9989;</span> | <span>&#9989;</span> \* |  |  | <span>&#9989;</span> |  |  |
| CSS | <span>&#9989;</span> | <span>&#9989;</span> |  | <span>&#9989;</span> | <span>&#9989;</span> |  |  |
| D | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  | <span>&#9989;</span> |  |  |
| Dart | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  | <span>&#9989;</span> |  |  |
| Elixir | <span>&#9989;</span> | <span>&#9989;</span> |  | <span>&#9989;</span> | <span>&#9989;</span> |  |  |
| Elm | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  | <span>&#9989;</span> |  |  |
| Erlang |  | <span>&#9989;</span> | <span>&#9989;</span> \* | <span>&#9989;</span> |  |  |  |
| F# |  |  |  |  |  |  |  |
| Fortran | <span>&#9989;</span> | <span>&#9989;</span> |  |  |  |  |  |
| GDScript | <span>&#9989;</span> |  |  |  | <span>&#9989;</span> |  |  |
| Go | <span>&#9989;</span> | <span>&#9989;</span> |  | <span>&#9989;</span> | <span>&#9989;</span> |  |  |
| Groovy | <span>&#9989;</span> | <span>&#9989;</span> \* | <span>&#9989;</span> |  |  |  |  |
| Haskell | <span>&#9989;</span> | <span>&#9989;</span> |  | <span>&#9989;</span> | <span>&#9989;</span> |  |  |
| HTML | <span>&#9989;</span> | <span>&#9989;</span> |  | <span>&#9989;</span> | <span>&#9989;</span> |  |  |
| Java | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  |  |
| Javascript | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  |  |
| JSON | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |<span>&#x274c;</span>|  |  |  |
| Julia | <span>&#9989;</span> | <span>&#9989;</span> \* |  | <span>&#9989;</span> | <span>&#9989;</span> |  |  |
| Kotlin | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  |  |  |
| Lua | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> ex | <span>&#9989;</span> | <span>&#9989;</span> |  |  |
| Nim | <span>&#9989;</span> | <span>&#9989;</span> \* | <span>&#9989;</span> \* |  |  |  |  |
| Nix | <span>&#9989;</span> |  |  | <span>&#9989;</span> |  |  |  |
| Ocaml |  |  |  | <span>&#9989;</span> | <span>&#9989;</span> |  |  |
| Odin | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  |  |  |  |
| OpenSCAD | <span>&#9989;</span> |  |  |  |  |  |  |
| Perl | <span>&#9989;</span> | <span>&#9989;</span> |  | <span>&#9989;</span> |  |  |  |
| PHP | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> ex | <span>&#9989;</span> |  |  |  |
| Python | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  |  |
| R | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  |  |  |
| Ruby | <span>&#9989;</span> | <span>&#9989;</span> |  | <span>&#9989;</span> | <span>&#9989;</span> |  |  |
| Rust | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  |  |
| Scala | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  |  |  |
| SQL | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  |  |
| Svelte | <span>&#9989;</span> |  |  | <span>&#9989;</span> |  |  |  |
| Tailwind | <span>&#9989;</span> | <span>&#9989;</span> \* | <span>&#x274c;</span> |<span>&#x274c;</span>| <span>&#x274c;</span> |  |  |
| TeX | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  |  |  |
| TOML | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#x274c;</span> | <span>&#9989;</span> |  |  |
| Typescript | <span>&#9989;</span> | <span>&#9989;</span> |  |  |  |  |  |
| Typst | <span>&#9989;</span> | <span>&#9989;</span> \* | <span>&#9989;</span> |  |  |  |  |
| V | <span>&#9989;</span> | <span>&#9989;</span> |  |  | <span>&#9989;</span> |  |  |
| Vala |  | <span>&#9989;</span> \* | <span>&#9989;</span> |  |  |  |  |
| XML | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#x274c;</span> |  |  |  |
| Zig | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> ex |  | <span>&#9989;</span> |  |  |
| YAML | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#x274c;</span> | <span>&#9989;</span> |  |  |

`*`: there are still some problems to solve

`ex`: external linter

## LSP Bundle support status

| Language         | LSP Bundle | LSP Bundle Package | IDE Package |
|------------------|:--------------:|:-------------:|:-------------:|
| Arduino |  |  |  |
| Bash |  |  |  |
| C# |  |  |  |
| C/C++ | <span>&#9989;</span> | `lsp_c` | `ide_c` |
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
| Java | <span>&#9989;</span> | `lsp_java` | `ide_java` |
| Javascript | <span>&#9989;</span> | `lsp_typescript` | `ide_javascript` |
| JSON | <span>&#9989;</span> | `lsp_json` |  |
| Julia |  |  |  |
| Kotlin |  |  |  |
| Lisp |  |  |  |
| Lua | <span>&#9989;</span> | `lsp_lua` | `ide_lua` |
| Nim |  |  |  |
| Nix |  |  |  |
| Ocaml |  |  |  |
| Odin |  |  |  |
| OpenSCAD |  |  |  |
| Perl |  |  |  |
| PHP |  |  |  |
| Python | <span>&#9989;</span> | `lsp_python` | `ide_python` |
| R |  |  |  |
| Ruby |  |  |  |
| Rust | <span>&#9989;</span> | `lsp_rust` | `ide_rust` |
| Scala |  |  |  |
| SQL |  |  |  |
| Svelte |  |  |  |
| Tailwind |  |  |  |
| TeX | <span>&#9989;</span> | `lsp_tex` | `ide_tex` |
| Typescript | <span>&#9989;</span> | `lsp_typescript` |  |
| Typst |  |  |  |
| XML |  |  |  |
| YAML | <span>&#9989;</span> | `lsp_yaml` |  |
| Zig | <span>&#9989;</span> | `lsp_zig` | `ide_zig` |

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
