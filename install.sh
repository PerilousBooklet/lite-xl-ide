#!/usr/bin/bash

# Colors
lpm install meta_colors

# Fonts
wget "https://github.com/PerilousBooklet/lite-xl-ide/blob/main/fonts/FiraCodeNerdFont-Regular.ttf" --directory-prefix="~/.config/lite-xl/fonts"
wget "https://github.com/PerilousBooklet/lite-xl-ide/blob/main/fonts/SauceCodeProNerdFont-Regular.ttf" --directory-prefix="~/.config/lite-xl/fonts"

# Languages
lpm install meta_languages

# Devicons by PerilousBooklet
wget "https://github.com/PerilousBooklet/lite-xl-devicons/blob/main/devicons.lua" --directory-prefix="~/.config/lite-xl/plugins"
wget "https://github.com/PerilousBooklet/lite-xl-devicons/blob/main/fontello-a6929858/font/devicons.ttf" --directory-prefix="~/.config/lite-xl/fonts"

# Plugins
lpm install align_carets \
            autoinsert \
            autosave \
            bracketmatch \
            colorpreview \
            "exec" \
            extend_selection_line \
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
                      vscode-css-languageserver \
                      vscode-html-languageserver \
                      vscode-json-languageserver
paru -S --noconfirm texlab-bin \
                    r-languageserver

# Linters
pacman --noconfirm -S flake8
