# Lite XL IDE

> [!NOTE]
> The information stored here will eventually be moved to the [new website](https://takase.top/lite-xl-docs/user-guide/introduction/)

This repository contains development information about plugins and configurations that aim to turn 
[Lite XL](https://takase.top/lite-xl-docs/) into a powerful but still minimal IDE.

If you want to know the development status of the IDE configuration for yoiur favourite programming language, look at the 
[Language Support Status](#language-support-status) section.

## Table of Contents

1. [Installation](#installation)
2. [Features](#features)
3. [Language Support Status](#language-support-status)
4. [Bundles Support Status](#bundles-support-status)
5. [Credits](#credits)

## Installation

Read the [official guide](https://lite-xl.com/user-guide/ide-setup/) for an introduction to the intended IDE-like setup.

## Features

- Syntax highlighting for 100+ languages
- Intellisense support for 40+ languages
- VSCode-like minimap
- Custom project treeview icons
- Project-wide text string search
- Project-wide filename search
- Multi-cursor editing
- Single and multi-line commenting with shortcuts
- Go-to-line-n command
- Integrated terminal
- Git integration
- Builder integration
- Debugger integration
- Todo treeview
- Code block definition preview on hover
- Project template manager

### WIP

- Foldable code blocks
- Ligatures support
- Document symbols treeview

### TODO

- Project-wide refactoring
- External libraries reference in project treeview
- Simultaneous tag rename
- Boilerplate utility

## Language support status

<!-- TODO: add relative link to checkmark spans -->

<!-- check mark: <span>&#9989;</span> -->

### Must-Have

| Language | Syntax High. | LSP support | Linting | Snippets | Formatter | Builder | Debugger |
|------------------|:--------------:|:-------------:|:---------:|:----------:|:----------:|:-----------:|:---------:|
| Bash | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> ex | <span>&#9989;</span> | <span>&#9989;</span> |  |  |
| C# | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  |  |  |
| C/C++ | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |<span>&#9989;</span>|
| CSS | <span>&#9989;</span> | <span>&#9989;</span> |  | <span>&#9989;</span> | <span>&#9989;</span> |  |  |
| Go | <span>&#9989;</span> | <span>&#9989;</span> |  | <span>&#9989;</span> | <span>&#9989;</span> |  |  |
| HTML | <span>&#9989;</span> | <span>&#9989;</span> |  | <span>&#9989;</span> | <span>&#9989;</span> |  |  |
| Java | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  |  |
| Javascript | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  |  |
| JSON | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |/|  |  |  |
| Lua | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> ex | <span>&#9989;</span> | <span>&#9989;</span> |  |  |
| Perl | <span>&#9989;</span> | <span>&#9989;</span> |  | <span>&#9989;</span> |  |  |  |
| PHP | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> ex | <span>&#9989;</span> |  |  |  |
| Python | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  |  |
| Ruby | <span>&#9989;</span> | <span>&#9989;</span> |  | <span>&#9989;</span> | <span>&#9989;</span> |  |  |
| Rust | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  |  |
| SQL | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  |  |
| XML | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | / |  |  |  |
| YAML | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | / | <span>&#9989;</span> |  |  |

### Nice-to-Have

| Language | Syntax High. | LSP support | Linting | Snippets | Formatter | Builder | Debugger |
|------------------|:--------------:|:-------------:|:---------:|:----------:|:----------:|:-----------:|:---------:|
| Arduino | <span>&#9989;</span> | WIP |  |  |  |  |  |
| Assembly x86_64 | <span>&#9989;</span> | WIP |  |  |  |  |  |
| Assembly RISC-V | <span>&#9989;</span> |  |  |  |  |  |  |
| Clojure | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  | <span>&#9989;</span> |  |  |
| Cmake | <span>&#9989;</span> | [WIP](https://github.com/lite-xl/lite-xl-lsp/pull/145) |  |  |  |  |  |
| Cobol |  |  |  |  |  |  |  |
| Common Lisp |  |  |  |  |  |  |  |
| Crystal | <span>&#9989;</span> | <span>&#9989;</span> \* |  |  | <span>&#9989;</span> |  |  |
| D | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  | <span>&#9989;</span> |  |  |
| Dart | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  | <span>&#9989;</span> |  |  |
| Elixir | <span>&#9989;</span> | <span>&#9989;</span> |  | <span>&#9989;</span> | <span>&#9989;</span> |  |  |
| Elm | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  | <span>&#9989;</span> |  |  |
| Erlang | [WIP](https://github.com/lite-xl/lite-xl-plugins/pull/424) | <span>&#9989;</span> | <span>&#9989;</span> \* | <span>&#9989;</span> |  |  |  |
| F# | [WIP](https://github.com/lite-xl/lite-xl-plugins/pull/423) | [WIP](https://github.com/lite-xl/lite-xl-lsp/pull/177) |  |  |  |  |  |
| Fortran | <span>&#9989;</span> | <span>&#9989;</span> |  |  |  |  |  |
| GDScript | <span>&#9989;</span> |  |  |  | <span>&#9989;</span> |  |  |
| GLSL | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  |  |  |  |
| Groovy | <span>&#9989;</span> | <span>&#9989;</span> \* | <span>&#9989;</span> |  |  |  |  |
| Haskell | <span>&#9989;</span> | <span>&#9989;</span> |  | <span>&#9989;</span> | <span>&#9989;</span> |  |  |
| Julia | <span>&#9989;</span> | [WIP](https://github.com/lite-xl/lite-xl-lsp/pull/107) \* |  | <span>&#9989;</span> | <span>&#9989;</span> |  |  |
| Kotlin | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  |  |  |
| Meson | <span>&#9989;</span> | [WIP](https://github.com/lite-xl/lite-xl-lsp/pull/145) |  |  |  |  |  |
| Nim | <span>&#9989;</span> | <span>&#9989;</span> \* | <span>&#9989;</span> \* |  |  |  |  |
| Nix | <span>&#9989;</span> |  |  | <span>&#9989;</span> |  |  |  |
| Ocaml | [WIP](https://github.com/lite-xl/lite-xl-plugins/pull/429) | [WIP](https://github.com/lite-xl/lite-xl-lsp/pull/165) | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  |  |
| Odin | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  |  |  |  |
| OpenSCAD | <span>&#9989;</span> |  |  |  |  |  |  |
| Pascal |  |  |  |  |  |  |  |
| PlantUML | [WIP](https://github.com/lite-xl/lite-xl-plugins/pull/509) | [WIP](https://github.com/lite-xl/lite-xl-lsp/pull/148) |  |  |  |  |  |
| R | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  |  |  |
| Scala | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  |  |  |
| Scheme |  | [WIP](https://github.com/lite-xl/lite-xl-lsp/pull/149) |  |  |  |  |  |
| Smalltalk |  |  |  |  |  |  |  |
| SystemVerilog |  | [WIP](https://github.com/lite-xl/lite-xl-lsp/pull/147) |  |  |  |  |  |
| TeX | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  |  |  |
| TOML | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | / | <span>&#9989;</span> |  |  |
| Typescript | <span>&#9989;</span> | <span>&#9989;</span> |  |  |  |  |  |
| Typst | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  |  |  |  |
| V | <span>&#9989;</span> | <span>&#9989;</span> |  |  | <span>&#9989;</span> |  |  |
| Vala | [WIP](https://github.com/lite-xl/lite-xl-plugins/pull/432) | <span>&#9989;</span> \* | <span>&#9989;</span> |  |  |  |  |
| Verilog |  |  |  |  |  |  |  |
| Zig | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> ex |  | <span>&#9989;</span> |  |  |

`*`: there are still some problems to solve

`ex`: external linter

## Bundles Support Status

### Must-Have

| Language         | LSP Bundle | Reviewed | LSP Bundle Package | IDE Package |
|------------------|:--------------:|:--------------:|:-------------:|:-------------:|
| Bash |  |  |  |  |
| C# |  |  |  |  |
| C/C++ | <span>&#9989;</span> | <span>&#9989;</span> | `lsp_c` | `ide_c` |
| CSS |  |  |  | / |
| Go | <span>&#9989;</span> |  | `lsp_go` |  |
| HTML |  |  |  |  |
| Java | <span>&#9989;</span> |  | `lsp_java` | `ide_java` |
| Javascript | <span>&#9989;</span> |  | `lsp_typescript` | `ide_javascript` |
| JSON | <span>&#9989;</span> |  | `lsp_json` | / |
| Lua | <span>&#9989;</span> | <span>&#9989;</span> | `lsp_lua` | `ide_lua` |
| PHP |  |  |  |  |
| Python | <span>&#9989;</span> |  | `lsp_python` | `ide_python` |
| Rust | <span>&#9989;</span> |  | `lsp_rust` | `ide_rust` |
| SQL |  |  |  |  |
| YAML | <span>&#9989;</span> |  | `lsp_yaml` | / |

### Nice-to-Have

| Language         | LSP Bundle | Reviewed | LSP Bundle Package | IDE Package |
|------------------|:--------------:|:--------------:|:-------------:|:-------------:|
| Arduino |  |  |  |  |
| Assembly_x86_64 |  |  |  |  |
| Assembly_RISC_V |  |  |  |  |
| Clojure | <span>&#9989;</span> |  | `lsp_clojure` |  |
| CMake |  |  |  | / |
| Cobol |  |  |  |  |
| Common Lisp |  |  |  |  |
| Crystal |  |  |  |  |
| D | <span>&#9989;</span> |  | `lsp_d` |  |
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
| Perl |  |  |  |  |
| PlantUML |  |  |  |  |
| R |  |  |  |  |
| Ruby |  |  |  |  |
| Scala |  |  |  |  |
| Scheme |  |  |  |  |
| SystemVerilog |  |  |  |  |
| TeX | <span>&#9989;</span> |  | `lsp_tex` | `ide_tex` |
| Typescript | <span>&#9989;</span> |  | `lsp_typescript` |  |
| Typst |  |  |  |  |
| V |  |  |  |  |
| Vala |  |  |  |  |
| Verilog |  |  |  |  |
| Zig | <span>&#9989;</span> |  | `lsp_zig` | `ide_zig` |
| XML | [WIP](https://github.com/lite-xl/lite-xl-lsp-servers/pull/64) |  |  | / |

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
