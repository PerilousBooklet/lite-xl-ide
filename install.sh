#!/usr/bin/bash

# TODO: make this installer a meta package for lpm?

# Colors
lpm install meta_colors

# Languages
lpm install meta_languages

# Devicons by PerilousBooklet
# TODO: fix manifest for lite-xl-devicons
#lpm repo add "https://github.com/PerilousBooklet/lite-xl-devicons"
#lpm install devicons

# Plugins
lpm install align_carets \
            autoinsert \
            autosave \
            bracketmatch \
            colorpreview \
            "exec" \
            extend_selection_line \
            ghmarkdown \
            indentguide \
            lfautoinsert \
            lintplus \
            lsp \
            lsp_snippets \
            lsp_c \
            lsp_lua \
            lsp_rust \
            lsp_zig \
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
pacman --noconfirm -S python-lsp-server \
                      vscode-html-languageserver \
                      vscode-css-languageserver \
                      deno \
                      vscode-json-languageserver
paru -S --noconfirm jdtls \
                    texlab-bin \
                    r-languageserver \
                    nodejs-intelephense \
                    flow-bin \
                    sql-language-server \
                    crystalline-bin \
                    elixir-ls

# Linters
pacman --noconfirm -S flake8 \
                      shellcheck \
                      texlive-binextra \
                      stylelint \
                      eslint

# Code formatters
paru --noconfirm -S sql-formatter

# TODO: Add configuration options to USERDIR/init.lua
