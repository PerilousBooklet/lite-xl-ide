# Lite XL IDE setup

## Introduction

Documentation for a set of plugins and configuration files that aims to turn `Lite XL` into a proper IDE.

This project is still WIP.

Once all manual setup istances and all LSP bundles are completed, the install script will be replaced by metapackages in [Adam's repo](https://github.com/adamharrison/lite-xl-ide).

## Basic Installation

Arch Linux (requires the `paru` AUR helper):
```sh
git clone "https://github.com/PerilousBooklet/lite-xl-ide.git"
cd ./lite-xl-ide
./install.sh
```

## Advanced Installation
To enable intellisense (LSP server, linter) support for any of the languages in the table below, see the [dedicated guide](./docs.md)

## Features

- [x] Syntax highlighting for 70+ languages
- [x] Intellisense support for 40+ languages
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
- [x] Local markdown renderer (uses the `luamd` library)
- [x] Code block definition preview on hover (like for TailwindCSS in VSCode)
- [x] Builder integration
- [x] Debugger integration
- [ ] Foldable code blocks
- [ ] Horizontal scrolling for project treeview
- [ ] Document symbols treeview
- [ ] Automatic textEdit for in-file dependency reference
- [ ] Support goto-definition/implementation for decompiled libraries (es. java)
- [ ] Simultaneous tag rename <!-- WIP: tex works, html and xml are missing -->
- [ ] Project-wide refactoring
- [ ] Project template manager
- [ ] Paste converting from JSON to Typescript
- [ ] Multi-threaded find/replace/refactor
- [ ] Gradle tasks dedicated commandview
- [ ] Tmux integration

## Language support status

<!-- check:<span>&#10004;</span>-->
<!-- x: <span>&#10008;</span> -->

| Language | Syntax High. | LSP support | Linting | Snippets | Builder | Debugger |
|------------------|:--------------:|:-------------:|:---------:|:----------:|:-----------:|:---------:|
| Arduino |  |  |  |  |  |  |  |
| Bash |<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|  |  |
| C# |<span>&#10004;</span>|  |  |<span>&#10004;</span>|  |  |
| C/C++ |<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|
| Clojure |<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|  |  |  |
| Crystal |<span>&#10004;</span>|<span>&#10004;</span>|  |  |  |  |
| CSS |<span>&#10004;</span>|<span>&#10004;</span>|  |<span>&#10004;</span>|  |  |
| D |  |  |  |  |  |  |
| Dart |<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|  |  |  |
| Elixir |<span>&#10004;</span>|<span>&#10004;</span>|  |<span>&#10004;</span>|  |  |
| Elm |<span>&#10004;</span>| <span>&#10004;</span> | <span>&#10004;</span> |  |  |  |
| Erlang |  |<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|  |  |
| F# |  |  |  |  |  |  |
| Go |<span>&#10004;</span>|<span>&#10004;</span>|  |<span>&#10004;</span>|  |  |
| Groovy |  |<span>&#10004;</span> \*|<span>&#10004;</span> \*|  |  |  |
| Haskell |<span>&#10004;</span>|<span>&#10004;</span>|  |<span>&#10004;</span>|  |  |
| HTML |<span>&#10004;</span>|<span>&#10004;</span>|  |<span>&#10004;</span>|  |  |
| Java |<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|  |  |
| Javascript |<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|  |  |
| JSON |<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10008;</span>|  |  |
| Julia |<span>&#10004;</span>|  |  |<span>&#10004;</span>|  |  |
| Kotlin |  |<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|  |  |
| Lisp |<span>&#10004;</span>|  |  |  |  |  |
| Lua |<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|  |
| Nim |<span>&#10004;</span>|  |  |  |  |  |
| Nix |<span>&#10004;</span>|  |  |<span>&#10004;</span>|  |  |
| Ocaml |<span>&#10004;</span>|  |  |<span>&#10004;</span>|  |  |
| Odin |<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|  |  |  |
| OpenSCAD |  |  |  |  |  |  |
| Perl |<span>&#10004;</span>|<span>&#10004;</span>|  |<span>&#10004;</span>|  |  |
| PHP |<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|  |  |
| Python |<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|  |  |
| R |<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|  |  |
| Ruby |<span>&#10004;</span>|<span>&#10004;</span>|  |<span>&#10004;</span>|  |  |
| Rust |<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|  |
| Scala |<span>&#10004;</span>| <span>&#10004;</span> | <span>&#10004;</span> |<span>&#10004;</span>|  |  |
| SQL |<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|  |  |
| Svelte |<span>&#10004;</span>|  |  |<span>&#10004;</span>|  |  |
| Tailwind |<span>&#10004;</span>|<span>&#10004;</span> \*|  |<span>&#10008;</span>|  |  |
| TeX |<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|  |  |
| Typescript |<span>&#10004;</span>|<span>&#10004;</span>|  |  |  |  |
| Typst |  |<span>&#10004;</span> \*|<span>&#10004;</span>|  |  |  |
| V |  |  |  |  |  |  |
| XML |<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|  |  |  |
| Zig |<span>&#10004;</span>|<span>&#10004;</span>|<span>&#10004;</span>|  |  |  |

`*`: there are still some problems to solve

## LSP bundle support status

| Language         | LSP Bundle | LPM Package | IDE Package |
|------------------|:--------------:|:-------------:|:-------------:|
| Arduino |  |  | |
| Bash |  |  | |
| C# |  |  | |
| C/C++ |<span>&#10004;</span>| `lsp_c` | `ide` |
| Clojure |   |  | |
| Crystal |  |  | |
| CSS |  |  | |
| Dart |  |  | |
| Elixir |  |  | |
| ELM |  |  | |
| Erlang |  |  | |
| Go |  |  | |
| Groovy |  |  | |
| Haskell |  |  | |
| HTML |  |  | |
| Java |  |  | |
| Javascript |  |  | |
| JSON |  |  | |
| Julia |  |  | |
| Kotlin |  |  | |
| Lisp |  |  | |
| Lua |<span>&#10004;</span>| `lsp_lua` | |
| Nim |  |  | |
| Nix |  |  | |
| Ocaml |  |  | |
| Odin |  |  | |
| OpenSCAD |  |  | |
| Perl |  |  | |
| PHP |  |  | |
| Python | <span>&#10004;</span> | `lsp_python` | |
| R |  |  | |
| Ruby |  |  | |
| Rust |<span>&#10004;</span>| `lsp_rust` | |
| Scala |  |  | |
| SQL |  |  | |
| Svelte |  |  | |
| Tailwind |  |  | |
| TeX |<span>&#10004;</span>| `lsp_tex` | |
| Typescript |  |  | |
| Typst |  |  | |
| XML |  |  | |
| Zig |<span>&#10004;</span>| `lsp_zig` | |

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

