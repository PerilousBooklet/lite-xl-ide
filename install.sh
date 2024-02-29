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

# LSP servers
# lpm install lsp_c \
#             lsp_lua \
#             lsp_quicklintjs \
#             lsp_rust \
#             lsp_tex \
#             lsp_zig

# Arch Linux specific language/lsp-servers/linters installation
sudo pacman --noconfirm -S 
paru --noconfirm -S scala \
                    scala-docs \
                    scala-sources
sudo pacman --noconfirm -S python-lsp-server \
                           vscode-html-languageserver \
                           vscode-css-languageserver \
                           typescript-language-server \
                           vscode-json-languageserver \
                           gopls \
                           haskell-language-server\
                           rust-analyzer
                           zls \
                           arduino-language-server \
                           dart
paru --noconfirm -S jdtls \
                    texlab-bin \
                    r-languageserver \
                    quick-lint-js \
                    nodejs-intelephense \
                    flow-bin \
                    sql-language-server \
                    crystalline-bin \
                    elixir-ls \
                    odinls \
                    typst-lsp \
                    kotlin-Language-server \
                    clojure-lsp-bin \
                    metals
sudo pacman --noconfirm -S flake8 \
                           shellcheck \
                           texlive-binextra

# Ruby lsp setup
# Install rvm, install a ruby version with rvm, install ruby-lsp with gem

# Add lsp configuration options

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

