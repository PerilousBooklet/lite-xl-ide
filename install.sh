#!/usr/bin/bash

# Colors
lpm install meta_colors

# Languages
lpm install meta_languages

# Devicons by PerilousBooklet
# lpm add "https://github.com/PerilousBooklet/lite-xl-devicons"
# lpm install devicons

# Plugins
lpm install align_carets \
            autoinsert \
            autosave \
            bracketmatch \
            colorpreview \
            extend_selection_line \
            gitblame \
            indentguide \
            lfautoinsert \
            lintplus \
            lsp \
            lsp_snippets \
            minimap \
            opacity \
            rainbowparen \
            scalestatus \
            scm \
            selectionhighlight \
            snippets \
            sticky_scroll \
            terminal \
            todotreeview

# More plugins
# lpm install "exec" markers opacity extend_selection_line sort titleize

# Add lsp configuration options
echo -e "
local lsp = require \"plugins.lsp\"
local lspconfig = require \"plugins.lsp.config\"
-- ? -- Arduino
-- ? -- Assembly ?
-- ? -- C#
-- ? -- D
-- ? -- Elm
-- ? -- Erlang
-- ? -- F#
-- ? -- Julia
-- ? -- Lisp
-- ? -- Nim
-- ? -- Nix
-- ? -- OpenSCAD
-- ? -- V
--lspconfig.bashls.setup() -- Bash
--lspconfig.clangd.setup() -- C/C++
--lspconfig.clojure_lsp.setup() -- Clojure
--lspconfig.crystalline.setup() -- Crystal
--lspconfig.cssls.setup() -- CSS
--lspconfig.dartls.setup() -- Dart
--lspconfig.elixirls.setup() -- Elixir
--lspconfig.gopls.setup() -- Go
--lspconfig.groovyls.setup() -- Groovy
--lspconfig.hls.setup() -- Haskell
--lspconfig.html.setup() -- HTML
--lspconfig.intelephense.setup() -- PHP
--lspconfig.jdtls.setup() -- Java
--lspconfig.jsonls.setup() -- JSON
--lspconfig.kotlin_language_server.setup() -- Kotlin
--lspconfig.lemminx.setup() -- XML
--lspconfig.metals.setup() -- Scala
--lspconfig.ocaml_lsp.setup() -- OCaml
--lspconfig.perlnavigator.setup() -- Perl
--lspconfig.pylsp.setup() -- Python
--lspconfig.rlanguageserver.setup() -- R
--lspconfig.ruby_lsp.setup() -- Ruby
--lspconfig.rust-analyzer.setup() -- Rust
--lspconfig.sqlls.setup() -- SQL
--lspconfig.sumneko_lua.setup() -- Lua
--lspconfig.texlab.setup() -- TeX
--lspconfig.tsserver.setup() -- JS/TS
--lspconfig.typst_lsp.setup() -- Typst
--lspconfig.zls.setup() -- Zig

--lspconfig.tailwindcss.setup() -- Tailwind CSS
-- ? -- Svelte

-- ? -- Emmet
" >> ~/.config/lite-xl/init.lua

# Add lint+ configuration options
echo -e "
--local lintplus = require \"plugins.lintplus\"
--lintplus.setup.lint_on_doc_load()  -- enable automatic linting upon opening a file
--lintplus.setup.lint_on_doc_save()  -- enable automatic linting upon saving a file
" >> ~/.config/lite-xl/init.lua

# Add snippets files
mkdir -v ~/.config/lite-xl/plugins/snippets
git clone "https://github.com/rafamadriz/friendly-snippets.git" ~/.config/lite-xl/plugins/snippets/json
echo -e "
local lsp_snippets = require \"plugins.lsp_snippets\"
lsp_snippets.add_paths {'plugins/snippets/json'}
" >> ~/.config/lite-xl/init.lua
