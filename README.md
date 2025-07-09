# Lite XL IDE

> [!WARNING]
> The information stored here will eventually be moved to the [new website](https://takase.top/lite-xl-docs/user-guide/introduction/)

> [!NOTE]
> This project is WIP.
> Basic IDE functionality is ready only for C/C++ (refer to the [Language Section](#language-support-status) for information about your favourite language)

## Introduction

Documentation for a set of plugins and configuration files that aims to turn [Lite XL](https://takase.top/lite-xl-docs/) into a proper IDE.

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
- [x] Intellisense support for 40+ languages
- [x] Custom project treeview icons
- [x] VSCode-like minimap
- [x] Project-wide text string search
- [x] Project-wide filename search
- [x] Multi-cursor editing
- [x] Single/multi-line commenting with shortcuts
- [x] Go to line n command
- [x] Integrated terminal
- [x] Git integration
- [x] Builder integration
- [x] Debugger integration
- [x] Todo treeview
- [x] Code block definition preview on hover
- [x] Markdown support via [mdpreview](https://github.com/Not-a-web-Developer/lite-xl-mdpreview)

### WIP
- [ ] Foldable code blocks
- [ ] Horizontal scrolling for project treeview
- [ ] Ligatures support
- [ ] Project template manager
- [ ] Document symbols treeview
- [ ] Github Copilot integration

### TODO
- [ ] Project-wide refactoring
- [ ] External libraries reference in project treeview
- [ ] Simultaneous tag rename
- [ ] Support goto-definition/implementation for external libraries (es. java, minecraft mods)

## Development Boards

- [Intellisense](https://github.com/users/PerilousBooklet/projects/6/views/1)
- [Utilities](https://github.com/users/PerilousBooklet/projects/7/views/1)
- [Build Integration](https://github.com/users/PerilousBooklet/projects/8/views/1)
- [Debug Integration](https://github.com/users/PerilousBooklet/projects/9/views/1)
- [Profiling Integration](https://github.com/users/PerilousBooklet/projects/10/views/1)

## Language support status

<!-- TODO: add relative link to checkmark spans -->

<!-- check mark: <p style="color: #9acc76;">&#10004;</p> -->
<p style="color: #9acc76;">&#10004;</p>
<p style="color: #eb6772;">&#x2717;</p>

### Must-Have

| Language | Syntax High. | LSP support | Linting | Snippets | Formatter | Builder | Debugger |
|------------------|:--------------:|:-------------:|:---------:|:----------:|:----------:|:-----------:|:---------:|
| Bash | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> ex | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> |  |  |
| C# | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> |  |  |  |
| C/C++ | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> |<p style="color: #9acc76;">&#10004;</p>|
| CSS | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> |  | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> |  |  |
| Go | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> |  | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> |  |  |
| HTML | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> |  | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> |  |  |
| Java | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> |  |  |
| Javascript | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> |  |  |
| JSON | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> |/|  |  |  |
| Lua | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> ex | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> |  |  |
| Perl | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> |  | <p style="color: #9acc76;">&#10004;</p> |  |  |  |
| PHP | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> ex | <p style="color: #9acc76;">&#10004;</p> |  |  |  |
| Python | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> |  |  |
| Ruby | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> |  | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> |  |  |
| Rust | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> |  |  |
| SQL | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> |  |  |
| XML | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | / |  |  |  |
| YAML | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | / | <p style="color: #9acc76;">&#10004;</p> |  |  |

### Nice-to-Have

| Language | Syntax High. | LSP support | Linting | Snippets | Formatter | Builder | Debugger |
|------------------|:--------------:|:-------------:|:---------:|:----------:|:----------:|:-----------:|:---------:|
| Arduino | <p style="color: #9acc76;">&#10004;</p> | WIP |  |  |  |  |  |
| Assembly x86_64 | <p style="color: #9acc76;">&#10004;</p> | WIP |  |  |  |  |  |
| Assembly RISC-V | <p style="color: #9acc76;">&#10004;</p> |  |  |  |  |  |  |
| Clojure | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> |  | <p style="color: #9acc76;">&#10004;</p> |  |  |
| Cmake | <p style="color: #9acc76;">&#10004;</p> | [WIP](https://github.com/lite-xl/lite-xl-lsp/pull/145) |  |  |  |  |  |
| Cobol |  |  |  |  |  |  |  |
| Common Lisp |  |  |  |  |  |  |  |
| Crystal | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> \* |  |  | <p style="color: #9acc76;">&#10004;</p> |  |  |
| D | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> |  | <p style="color: #9acc76;">&#10004;</p> |  |  |
| Dart | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> |  | <p style="color: #9acc76;">&#10004;</p> |  |  |
| Elixir | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> |  | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> |  |  |
| Elm | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> |  | <p style="color: #9acc76;">&#10004;</p> |  |  |
| Erlang | [WIP](https://github.com/lite-xl/lite-xl-plugins/pull/424) | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> \* | <p style="color: #9acc76;">&#10004;</p> |  |  |  |
| F# | [WIP](https://github.com/lite-xl/lite-xl-plugins/pull/423) |  |  |  |  |  |  |
| Fortran | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> |  |  |  |  |  |
| GDScript | <p style="color: #9acc76;">&#10004;</p> |  |  |  | <p style="color: #9acc76;">&#10004;</p> |  |  |
| GLSL | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> |  |  |  |  |
| Groovy | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> \* | <p style="color: #9acc76;">&#10004;</p> |  |  |  |  |
| Haskell | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> |  | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> |  |  |
| Julia | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> \* |  | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> |  |  |
| Kotlin | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> |  |  |  |
| Meson | <p style="color: #9acc76;">&#10004;</p> | [WIP](https://github.com/lite-xl/lite-xl-lsp/pull/145) |  |  |  |  |  |
| Nim | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> \* | <p style="color: #9acc76;">&#10004;</p> \* |  |  |  |  |
| Nix | <p style="color: #9acc76;">&#10004;</p> |  |  | <p style="color: #9acc76;">&#10004;</p> |  |  |  |
| Ocaml | [WIP](https://github.com/lite-xl/lite-xl-plugins/pull/429) | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> |  |  |
| Odin | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> |  |  |  |  |
| OpenSCAD | <p style="color: #9acc76;">&#10004;</p> |  |  |  |  |  |  |
| Pascal |  |  |  |  |  |  |  |
| PlantUML | [WIP](https://github.com/lite-xl/lite-xl-plugins/pull/509) | [WIP](https://github.com/lite-xl/lite-xl-lsp/pull/148) |  |  |  |  |  |
| R | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> |  |  |  |
| Scala | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> |  |  |  |
| Scheme | [WIP]() |  |  |  |  |  |  |
| SystemVerilog |  | [WIP](https://github.com/lite-xl/lite-xl-lsp/pull/147) |  |  |  |  |  |
| TeX | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> |  |  |  |
| TOML | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | / | <p style="color: #9acc76;">&#10004;</p> |  |  |
| Typescript | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> |  |  |  |  |  |
| Typst | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> |  |  |  |  |
| V | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> |  |  | <p style="color: #9acc76;">&#10004;</p> |  |  |
| Vala | [WIP](https://github.com/lite-xl/lite-xl-plugins/pull/432) | <p style="color: #9acc76;">&#10004;</p> \* | <p style="color: #9acc76;">&#10004;</p> |  |  |  |  |
| Verilog |  |  |  |  |  |  |  |
| Zig | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> ex |  | <p style="color: #9acc76;">&#10004;</p> |  |  |

`*`: there are still some problems to solve

`ex`: external linter

## LSP bundle support status

### Must-Have

| Language         | LSP Bundle | Reviewed | LSP Bundle Package | IDE Package |
|------------------|:--------------:|:--------------:|:-------------:|:-------------:|
| Bash |  |  |  |  |
| C# |  |  |  |  |
| C/C++ | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | `lsp_c` | `ide_c` |
| CSS |  |  |  | / |
| Go | <p style="color: #9acc76;">&#10004;</p> |  | `lsp_go` |  |
| HTML |  |  |  |  |
| Java | <p style="color: #9acc76;">&#10004;</p> |  | `lsp_java` | `ide_java` |
| Javascript | <p style="color: #9acc76;">&#10004;</p> |  | `lsp_typescript` | `ide_javascript` |
| JSON | <p style="color: #9acc76;">&#10004;</p> |  | `lsp_json` | / |
| Lua | <p style="color: #9acc76;">&#10004;</p> | <p style="color: #9acc76;">&#10004;</p> | `lsp_lua` | `ide_lua` |
| Perl |  |  |  |  |
| PHP |  |  |  |  |
| Python | <p style="color: #9acc76;">&#10004;</p> |  | `lsp_python` | `ide_python` |
| Ruby |  |  |  |  |
| Rust | <p style="color: #9acc76;">&#10004;</p> |  | `lsp_rust` | `ide_rust` |
| SQL |  |  |  |  |
| XML | [WIP](https://github.com/lite-xl/lite-xl-lsp-servers/pull/64) |  |  | / |
| YAML | <p style="color: #9acc76;">&#10004;</p> |  | `lsp_yaml` | / |

### Nice-to-Have

| Language         | LSP Bundle | Reviewed | LSP Bundle Package | IDE Package |
|------------------|:--------------:|:--------------:|:-------------:|:-------------:|
| Arduino |  |  |  |  |
| Assembly_x86_64 |  |  |  |  |
| Assembly_RISC_V |  |  |  |  |
| Clojure | <p style="color: #9acc76;">&#10004;</p> |  | `lsp_clojure` |  |
| CMake |  |  |  | / |
| Cobol |  |  |  |  |
| Common Lisp |  |  |  |  |
| Crystal |  |  |  |  |
| D | <p style="color: #9acc76;">&#10004;</p> |  | `lsp_d` |  |
| Dart |  |  |  |  |
| Elixir |  |  |  |  |
| Elm |  |  |  |  |
| Erlang |  |  |  |  |
| F# |  |  |  |  |
| Fortran |  |  |  |  |
| GDScript |  |  |  | / |
| GLSL |  |  |  |  |
| Groovy |  |  |  |  |
| Haskell |  |  |  |  |
| Julia |  |  |  |  |  |
| Kotlin |  |  |  |  |
| Meson |  |  |  | / |
| Nim |  |  |  |  |
| Nix |  |  |  |  |
| Ocaml |  |  |  |  |
| Odin |  |  |  |  |
| OpenSCAD |  |  |  |  |
| Pascal |  |  |  |  |
| PlantUML |  |  |  |  |
| R |  |  |  |  |
| Scala |  |  |  |  |
| Scheme |  |  |  |  |
| SystemVerilog |  |  |  |  |
| TeX | <p style="color: #9acc76;">&#10004;</p> |  | `lsp_tex` | `ide_tex` |
| Typescript | <p style="color: #9acc76;">&#10004;</p> |  | `lsp_typescript` |  |
| Typst |  |  |  |  |
| V |  |  |  |  |
| Vala |  |  |  |  |
| Verilog |  |  |  |  |
| Zig | <p style="color: #9acc76;">&#10004;</p> |  | `lsp_zig` | `ide_zig` |

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

And many more...
