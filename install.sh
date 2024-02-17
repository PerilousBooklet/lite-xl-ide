#!/usr/bin/bash

# TODO: make this installer a meta package for lpm?

# Colors
lpm install meta_colors

# Languages
lpm install meta_languages

# Devicons by PerilousBooklet
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
# sudo pacman --noconfirm -S python-lsp-server \
#                       vscode-html-languageserver \
#                       vscode-css-languageserver \
#                       deno \
#                       vscode-json-languageserver \
#                       arduino-language-server
# paru --noconfirm -S jdtls \
#                     texlab-bin \
#                     r-languageserver \
#                     nodejs-intelephense \
#                     flow-bin \
#                     sql-language-server \
#                     crystalline-bin \
#                     elixir-ls \
#                     odinls

# Linters
# sudo pacman --noconfirm -S flake8 \
#                       shellcheck \
#                       texlive-binextra \
#                       stylelint \
#                       eslint
