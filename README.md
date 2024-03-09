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
- [ ] Tmux integration
- [ ] Gradle tasks dedicated commandview

## Language support status

<!-- check:<span>&#9989;</span>-->
<!-- x: <span>&#10008;</span> -->
<!-- &#9989; -->

| Language | Syntax High. | LSP support | Linting | Snippets | Builder | Debugger |
|------------------|:--------------:|:-------------:|:---------:|:----------:|:-----------:|:---------:|
| Arduino |  |  |  |  |  |  |  |
| Bash |<span>&#9989;</span>|<span>&#9989;</span>|<span>&#9989;</span> ex|<span>&#9989;</span>|  |  |
| C# |<span>&#9989;</span>| <span>&#9989;</span> | <span>&#9989;</span> |<span>&#9989;</span>|  |  |
| C/C++ |<span>&#9989;</span>|<span>&#9989;</span>|<span>&#9989;</span>|<span>&#9989;</span>|<span>&#9989;</span>|<span>&#9989;</span>|
| Clojure |<span>&#9989;</span>|<span>&#9989;</span>|<span>&#9989;</span>|  |  |  |
| Crystal |<span>&#9989;</span>|<span>&#9989;</span>|  |  |  |  |
| CSS |<span>&#9989;</span>|<span>&#9989;</span>|  |<span>&#9989;</span>|  |  |
| D | <span>&#9989;</span> |  |  |  |  |  |
| Dart |<span>&#9989;</span>|<span>&#9989;</span>|<span>&#9989;</span>|  |  |  |
| Elixir |<span>&#9989;</span>|<span>&#9989;</span>|  |<span>&#9989;</span>|  |  |
| Elm |<span>&#9989;</span>| <span>&#9989;</span> | <span>&#9989;</span> |  |  |  |
| Erlang |  |<span>&#9989;</span>|<span>&#9989;</span>|<span>&#9989;</span>|  |  |
| F# |  |  |  |  |  |  |
| Go |<span>&#9989;</span>|<span>&#9989;</span>|  |<span>&#9989;</span>|  |  |
| Groovy |  |<span>&#9989;</span> \*|<span>&#9989;</span> \*|  |  |  |
| Haskell |<span>&#9989;</span>|<span>&#9989;</span>|  |<span>&#9989;</span>|  |  |
| HTML |<span>&#9989;</span>|<span>&#9989;</span>|  |<span>&#9989;</span>|  |  |
| Java |<span>&#9989;</span>|<span>&#9989;</span>|<span>&#9989;</span>|<span>&#9989;</span>|  |  |
| Javascript |<span>&#9989;</span>|<span>&#9989;</span>|<span>&#9989;</span>|<span>&#9989;</span>|  |  |
| JSON |<span>&#9989;</span>|<span>&#9989;</span>|<span>&#9989;</span>|<span>&#10008;</span>|  |  |
| Julia |<span>&#9989;</span>|  |  |<span>&#9989;</span>|  |  |
| Kotlin |  |<span>&#9989;</span>|<span>&#9989;</span>|<span>&#9989;</span>|  |  |
| Lisp |<span>&#9989;</span>|  |  |  |  |  |
| Lua |<span>&#9989;</span>|<span>&#9989;</span>|<span>&#9989;</span> ex|<span>&#9989;</span>|  |
| Nim |<span>&#9989;</span>|  |  |  ex|  |  |
| Nix |<span>&#9989;</span>|  |  |<span>&#9989;</span>|  |  |
| Ocaml |<span>&#9989;</span>|  |  |<span>&#9989;</span>|  |  |
| Odin |<span>&#9989;</span>|<span>&#9989;</span>|<span>&#9989;</span>|  |  |  |
| OpenSCAD |  |  |  |  |  |  |
| Perl |<span>&#9989;</span>|<span>&#9989;</span>|  |<span>&#9989;</span>|  |  |
| PHP |<span>&#9989;</span>|<span>&#9989;</span>|<span>&#9989;</span> ex|<span>&#9989;</span>|  |  |
| Python |<span>&#9989;</span>|<span>&#9989;</span>|<span>&#9989;</span>|<span>&#9989;</span>|  |  |
| R |<span>&#9989;</span>|<span>&#9989;</span>|<span>&#9989;</span>|<span>&#9989;</span>|  |  |
| Ruby |<span>&#9989;</span>|<span>&#9989;</span>|  |<span>&#9989;</span>|  |  |
| Rust |<span>&#9989;</span>|<span>&#9989;</span>|<span>&#9989;</span>|<span>&#9989;</span>|  |
| Scala |<span>&#9989;</span>| <span>&#9989;</span> | <span>&#9989;</span> |<span>&#9989;</span>|  |  |
| SQL |<span>&#9989;</span>|<span>&#9989;</span>|<span>&#9989;</span>|<span>&#9989;</span>|  |  |
| Svelte |<span>&#9989;</span>|  |  |<span>&#9989;</span>|  |  |
| Tailwind |<span>&#9989;</span>|<span>&#9989;</span> \*|  |<span>&#10008;</span>|  |  |
| TeX |<span>&#9989;</span>|<span>&#9989;</span>|<span>&#9989;</span>|<span>&#9989;</span>|  |  |
| Typescript |<span>&#9989;</span>|<span>&#9989;</span>|  |  |  |  |
| Typst |  |<span>&#9989;</span> \*|<span>&#9989;</span>|  |  |  |
| V | <span>&#9989;</span> |  |  |  |  |  |
| XML |<span>&#9989;</span>|<span>&#9989;</span>|<span>&#9989;</span>|  |  |  |
| Zig |<span>&#9989;</span>|<span>&#9989;</span>|<span>&#9989;</span> ex|  |  |  |

`*`: there are still some problems to solve
`ex`: external linter

## LSP bundle support status

| Language         | LSP Bundle | LPM Package | IDE Package |
|------------------|:--------------:|:-------------:|:-------------:|
| Arduino |  |  | |
| Bash |  |  | |
| C# |  |  | |
| C/C++ |<span>&#9989;</span>| `lsp_c` | `ide` |
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
| Lua |<span>&#9989;</span>| `lsp_lua` | |
| Nim |  |  | |
| Nix |  |  | |
| Ocaml |  |  | |
| Odin |  |  | |
| OpenSCAD |  |  | |
| Perl |  |  | |
| PHP |  |  | |
| Python | <span>&#9989;</span> | `lsp_python` | |
| R |  |  | |
| Ruby |  |  | |
| Rust |<span>&#9989;</span>| `lsp_rust` | |
| Scala |  |  | |
| SQL |  |  | |
| Svelte |  |  | |
| Tailwind |  |  | |
| TeX |<span>&#9989;</span>| `lsp_tex` | |
| Typescript |  |  | |
| Typst |  |  | |
| XML |  |  | |
| Zig |<span>&#9989;</span>| `lsp_zig` | |

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

