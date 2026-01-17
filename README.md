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

You can also take a look at the following quality-of-life plugins:

- `extend_selection_line` (extends the selection line to the full width of the DocView)
- `sort` (allows selecting text and sorting its lines alphabetically)
- `titleize` (allows selecting a string and changing to upper case the initial of each word)
- `markers` (allows placing line markers to which you can come back to sequentially by pressing a button, like for the results of a search)

### Manual Configuration Steps

Enable automatic linting upon opening and saving a file by adding the following code inside of `USERDIR/init.lua`:

```lua
local lintplus = require "plugins.lintplus"
lintplus.setup.lint_on_doc_load()  -- enable automatic linting upon opening a file
lintplus.setup.lint_on_doc_save()  -- enable automatic linting upon saving a file
```

Add code snippets by downloading the JSON files into a `USERDIR/plugins/snippets/json` folder and 
then writing the following code inside of `USERDIR/init.lua`:

```lua
local lsp_snippets = require "plugins.lsp_snippets"
lsp_snippets.add_paths {'plugins/snippets/json'}
```

You can also write your own snippets (in the folder `USERDIR/plugins/snippets/lua`) with 
[the format of the `snippets` plugin](https://github.com/vqns/lite-xl-snippets?tab=readme-ov-file#usage) and load them with 
the following code (paste it into `USERDIR/init.lua`): 

```lua
local snippet_files_list = system.list_dir(USERDIR .. "/plugins/snippets/lua")
local snippet_modules_list = {}
local temp_string = ""
for k, v in pairs(snippet_files_list) do
  if string.find(v, ".lua") then
    temp_string = string.gsub(snippet_files_list[k], ".lua", "")
    table.insert(snippet_modules_list, temp_string)
  end
end
for k, v in pairs(snippet_modules_list) do
  require("plugins.snippets.lua." .. v)
end
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
- [x] Single and multi-line commenting with shortcuts
- [x] Go-to-line-n command
- [x] Integrated terminal
- [x] Git integration
- [x] Builder integration
- [x] Debugger integration
- [x] Todo treeview
- [x] Code block definition preview on hover
- [x] Markdown support via [mdpreview](https://github.com/Not-a-web-Developer/lite-xl-mdpreview)
- [x] Project template manager

### WIP

- [ ] Foldable code blocks
- [ ] Ligatures support
- [ ] Document symbols treeview

### TODO

- [ ] Project-wide refactoring
- [ ] External libraries reference in project treeview
- [ ] Simultaneous tag rename
- [ ] Code mapper
- [ ] Database reader (with ER diagram viewer)
- [ ] HTTP client (to test APIs)

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
| F# | [WIP](https://github.com/lite-xl/lite-xl-plugins/pull/423) |  |  |  |  |  |  |
| Fortran | <span>&#9989;</span> | <span>&#9989;</span> |  |  |  |  |  |
| GDScript | <span>&#9989;</span> |  |  |  | <span>&#9989;</span> |  |  |
| GLSL | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  |  |  |  |
| Groovy | <span>&#9989;</span> | <span>&#9989;</span> \* | <span>&#9989;</span> |  |  |  |  |
| Haskell | <span>&#9989;</span> | <span>&#9989;</span> |  | <span>&#9989;</span> | <span>&#9989;</span> |  |  |
| Julia | <span>&#9989;</span> | <span>&#9989;</span> \* |  | <span>&#9989;</span> | <span>&#9989;</span> |  |  |
| Kotlin | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  |  |  |
| Meson | <span>&#9989;</span> | [WIP](https://github.com/lite-xl/lite-xl-lsp/pull/145) |  |  |  |  |  |
| Nim | <span>&#9989;</span> | <span>&#9989;</span> \* | <span>&#9989;</span> \* |  |  |  |  |
| Nix | <span>&#9989;</span> |  |  | <span>&#9989;</span> |  |  |  |
| Ocaml | [WIP](https://github.com/lite-xl/lite-xl-plugins/pull/429) | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  |  |
| Odin | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  |  |  |  |
| OpenSCAD | <span>&#9989;</span> |  |  |  |  |  |  |
| Pascal |  |  |  |  |  |  |  |
| PlantUML | [WIP](https://github.com/lite-xl/lite-xl-plugins/pull/509) | [WIP](https://github.com/lite-xl/lite-xl-lsp/pull/148) |  |  |  |  |  |
| R | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  |  |  |
| Scala | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> | <span>&#9989;</span> |  |  |  |
| Scheme | [WIP]() |  |  |  |  |  |  |
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
| Perl |  |  |  |  |
| PHP |  |  |  |  |
| Python | <span>&#9989;</span> |  | `lsp_python` | `ide_python` |
| Ruby |  |  |  |  |
| Rust | <span>&#9989;</span> |  | `lsp_rust` | `ide_rust` |
| SQL |  |  |  |  |
| XML | [WIP](https://github.com/lite-xl/lite-xl-lsp-servers/pull/64) |  |  | / |
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
| PlantUML |  |  |  |  |
| R |  |  |  |  |
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
