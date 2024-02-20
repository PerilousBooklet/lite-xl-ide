#!/usr/bin/bash

# Colors
lpm install meta_colors

# Languages
lpm install meta_languages

# Devicons by PerilousBooklet
#lpm repo add "https://github.com/PerilousBooklet/lite-xl-devicons"
#lpm install devicons
git clone "https://github.com/PerilousBooklet/lite-xl-devicons.git"
mv ./lite-xl-devicons/devicons.lua ~/.config/lite-xl/plugins/devicons.lua
mv ./lite-xl-devicons/fontello-64004b63/fonts/devicons.ttf ~/.config/lite-xl/fonts/devicons.ttf

# Plugins
lpm install align_carets \
            autoinsert \
            autosave \
            bracketmatch \
            colorpreview \
            "exec" \
            extend_selection_line \
            ghmarkdown \
            gitblame \
            indentguide \
            lfautoinsert \
            lintplus \
            lsp \
            lsp_snippets \
            markers \
            minimap \
            opacity \
            rainbowparen \
            scalestatus \
            scm \
            selectionhighlight \
            snippets \
            sort \
            sticky_scroll \
            terminal \
            titleize \
            todotreeview

# LSP servers
lpm install lsp_c \
            lsp_lua \
            lsp_rust \
            lsp_tex \
            lsp_zig

# Arch Linux specific lsp-servers/linters installation
sudo pacman --noconfirm -S python-lsp-server \
                           vscode-html-languageserver \
                           vscode-css-languageserver \
                           typescript-language-server \
                           vscode-json-languageserver \
                           gopls \
                           haskell-language-server\
                           rust-analyzer
                           zls \
                           arduino-language-server
paru --noconfirm -S jdtls \
                    texlab-bin \
                    r-languageserver \
                    quick-lint-js \
                    nodejs-intelephense \
                    flow-bin \
                    sql-language-server \
                    crystalline-bin \
                    elixir-ls \
                    odinls
sudo pacman --noconfirm -S flake8 \
                           shellcheck \
                           texlive-binextra

# Add some necessary configuration options
echo "
--local lintplus = require "plugins.lintplus"
--lintplus.setup.lint_on_doc_load()  -- enable automatic linting upon opening a file
--lintplus.setup.lint_on_doc_save()  -- enable automatic linting upon saving a file
" >> ~/.config/lite-xl/init.lua
