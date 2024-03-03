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
--lspconfig.sumneko_lua.setup()
--lspconfig.bashls.setup() -- Bash
--lspconfig.texlab.setup() -- TeX
--lspconfig.clangd.setup() -- C/C++
--lspconfig.jdtls.setup() -- Java
--lspconfig.pylsp.setup() -- Python
--lspconfig.html.setup() -- HTML
--lspconfig.cssls.setup() -- CSS
--lspconfig.tsserver.setup() -- JS/TS
--lspconfig.intelephense.setup() -- PHP
--lspconfig.jsonls.setup() -- JSON
--lspconfig.sqlls.setup() -- SQL
--lspconfig.perlnavigator.setup() -- Perl
--lspconfig.tailwindcss.setup() -- Tailwind CSS
--lspconfig.lemminx.setup() -- XML
--lspconfig.rlanguageserver.setup() -- R
--lspconfig.crystalline.setup() -- Crystal
--lspconfig.elixirls.setup() -- Elixir
--lspconfig.gopls.setup() -- Go
--lspconfig.hls.setup() -- Haskell
--lspconfig.rust-analyzer.setup() -- Rust
--lspconfig.zls.setup() -- Zig
--lspconfig.typst_lsp.setup() -- Typst
--lspconfig.kotlin_language_server.setup() -- Kotlin
--lspconfig.groovyls.setup() -- Groovy
--lspconfig.clojure_lsp.setup() -- Clojure
--lspconfig.dartls.setup() -- Dart
--lspconfig.ruby_lsp.setup() -- Ruby
--lspconfig.ocaml_lsp.setup() -- OCaml
--lspconfig.metals.setup() -- Scala
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

