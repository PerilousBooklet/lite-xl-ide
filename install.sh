#!/usr/bin/bash

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
                    sql-language-server

# Linters
pacman --noconfirm -S flake8 \
                      shellcheck \
                      texlive-binextra \
                      stylelint \
                      eslint

# Code formatters
paru --noconfirm -S sql-formatter

# Add configuration options to USERDIR/init.lua
echo '
-- lite-xl-lsp
local lsp = require "plugins.lsp"
local lspconfig = require "plugins.lsp.config"

-- enable lsp server implementations
lspconfig.pylsp.setup() -- Python
lspconfig.html.setup() -- HTML
lspconfig.cssls.setup() -- CSS
lspconfig.jsonls.setup() -- JSON
lspconfig.texlab.setup() -- TeX
lspconfig.bashls.setup() -- Bash
--lspconfig.flow.setup() -- JS
lspconfig.tsserver.setup() -- TS
lspconfig.intelephense.setup() -- PHP
lspconfig.sqlls.setup()

-- lsp server implementations
---# Java
--- __Status__: Works
--- __Site__: https://github.com/eclipse/eclipse.jdt.ls
--- __Installation__: `paru -S jdtls`
lsp.add_server {
  name = "jdtls",
  language = "java",
  file_patterns = { "%.java$" },
  command = { "jdtls" },
  verbose = false
}

-- lint+
local lintplus = require "plugins.lintplus"
lintplus.setup.lint_on_doc_load()  -- enable automatic linting upon opening a file
lintplus.setup.lint_on_doc_save()  -- enable automatic linting upon saving a file
lintplus.load({"luacheck",
               "shellcheck",
               "python"})
-- lsp_c already provides it
-- jdtls already provides it
-- rust-analyzer already provides it
-- rlanguageserver already provides it
-- vscode-json-languageserver already provides it
-- intelephense already provides is

-- snippets
local snippets = require "plugins.snippets"
require "plugins.snippets.lua.c"
require "plugins.snippets.lua.cpp"
require "plugins.snippets.lua.java"
require "plugins.snippets.lua.python"
require "plugins.snippets.lua.markdown"
require "plugins.snippets.lua.html"
--require "plugins.snippets.lua.css"
--require "plugins.snippets.lua.js"
--require "plugins.snippets.lua.ts"
--require "plugins.snippets.lua.php"
--require "plugins.snippets.lua.json"
require "plugins.snippets.lua.lua"
require "plugins.snippets.lua.bash"
require "plugins.snippets.lua.tex"
--require "plugins.snippets.lua.r"

-- lite-xl-scm
local StatusView = require "core.statusview"
-- change status view box position
core.add_thread(function() -- Wait until everything is loaded to move the statusbar item
  core.status_view:move_item("status:scm", 4, StatusView.Item.LEFT)
end)

-- todotreeviewxl
config.treeview_size = 750 * SCALE  -- set view width
config.todo_mode = "tag"  -- Change display mode (file/tag)
config.todo_expanded = true  -- Tells if the plugin should start with the nodes expanded
' >> ~/.config/lite-xl/init.lua
