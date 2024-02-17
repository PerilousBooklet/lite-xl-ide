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
            lsp_lua

pacman --noconfirm -S python-lsp-server \
                      vscode-html-languageserver \
                      vscode-css-languageserver \
                      deno \
                      vscode-json-languageserver \
                      arduino-language-server
paru --noconfirm -S jdtls \
                    texlab-bin \
                    r-languageserver \
                    nodejs-intelephense \
                    flow-bin \
                    sql-language-server \
                    crystalline-bin \
                    elixir-ls \
                    odinls \
                    openscad-lsp-git

# Linters
pacman --noconfirm -S flake8 \
                      shellcheck \
                      texlive-binextra \
                      stylelint \
                      eslint

# Code formatters
paru --noconfirm -S sql-formatter

# TODO: Add configuration options to USERDIR/init.lua
echo "
-- key bindings:
keymap.add({ ["ctrl+q"] = "core:quit" })

-------------
-- PLUGINS --
-------------

-- disabled plugins
--config.plugins.build = false
config.plugins.debugger = false
--config.plugins.ide = false
--config.plugins.todotreeview = false
config.plugins.lintplus = false

-- opacity
system.set_window_opacity(1.00)
--keymap.add({ ["alt+i"] = "opacity:increase" }, true)
--keymap.add({ ["alt+d"] = "opacity:decrease" }, true)

-- lite-xl-lsp
local lsp = require "plugins.lsp"
local lspconfig = require "plugins.lsp.config"

-- lsp_lua
lspconfig.bashls.setup() -- Bash
lspconfig.texlab.setup() -- TeX
-- lsp_c
--lspconfig.jdtls.setup() -- Java
lspconfig.pylsp.setup() -- Python
lspconfig.html.setup() -- HTML
lspconfig.cssls.setup() -- CSS
--lspconfig.flow.setup() -- JS, Bug: freezes Lite XL, requires shutdown
--lspconfig.tsserver.setup() -- TS
lspconfig.intelephense.setup() -- PHP
lspconfig.jsonls.setup() -- JSON
lspconfig.sqlls.setup() -- SQL
--lspconfig.perlnavigator.setup() -- Perl
--lspconfig.tailwindcss.setup() -- Tailwind CSS, Bug: writing classes freezes Lite XL for a few seconds
--lspconfig.lemminx.setup() -- XML
--lspconfig.rlanguageserver.setup() -- R
--lspconfig.crystalline.setup() -- Crystal
--lspconfig.elixirls.setup() -- Elixir

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

---# XML
--- __Status__: Works
--- __Site__: https://github.com/eclipse/lemminx
--- __Installation__: 'paru -S lemminx'
lsp.add_server {
  name = "lemminx",
  language = "xml",
  file_patterns = { "%.xml$" },
  command = { "lemminx" },
  verbose = false
}

---# Tailwind CSS
--- __Status__: Broken (freezes when writing class names inside html doc, requires new C implementation of json.lua)
--- __Site__: https://github.com/tailwindlabs/tailwindcss-intellisense
--- __Installation__: `sudo pacman -S tailwindcss-language-server`
lsp.add_server {
  name = "tailwindcss",
  language = "html",
  file_patterns = { "%.html$"},
  command = {'tailwindcss-language-server', '--stdio'},
  fake_snippets = true,
  verbose = false
}

---# PerlNavigator - Perl
--- __Status__: Works
--- __Site__: https://github.com/bscan/PerlNavigator
--- __Installation__: 'paru -S perlnavigator'
lsp.add_server {
  name = "perlnavigator",
  language = "Perl",
  file_patterns = { "%.pl$", "%.pm$" },
  command = { "perlnavigator" },
  settings = {
    perlnavigator = {
      -- The following setting is only needed if you want to set a custom perl path. It already defaults to "perl"
      perlPath = "perl"
    }
  }
}

---# R
-- __Status__: Works
-- __Site__:https://github.com/REditorSupport/languageserver#installation
-- __Installation__: `paru -S r-languageserver`
lsp.add_server {
  name = "rlanguageserver",
  language = "r",
  file_patterns = { "%.r$", "%.R$" },
  command = {'R', '--slave', '-e', 'languageserver::run()'},
  verbose = false
}

---# Crystal
--- __Status__: Works
--- __Site__: https://github.com/elbywan/crystalline
--- __Installation__: `paru -S crystalline-bin`
lsp.add_server {
  name = "crystalline",
  language = "crystal",
  file_patterns = { "%.cr$" },
  command = { "crystalline", "--stdio" },
  verbose = false
}

---# Elixir
--- __Status__: Works
--- __Site__: https://github.com/elixir-lsp/elixir-ls
--- __Installation__: 'paru -S elixir-ls'
lsp.add_server {
  name = "elixirls",
  language = "elixir",
  file_patterns = { "%.ex$", "%.exs$" },
  command = { "elixir-ls" },
  verbose = false
}

---# Nim
--- __Status__: Untested (AUR package missing)
--- __Site__: https://github.com/nim-lang/langserver
--- __Installation__: ?
-- lsp.add_server {
--   name = "nimlangserver",
--   language = "nim",
--   file_patterns = { "%.nim$" },
--   command = { "nimlangserver" },
--   verbose = false
-- }

---# Erlang
--- __Status__: Untested (AUR package missing)
--- __Site__: https://github.com/erlang-ls/erlang_ls
--- __Installation__: ?
-- lsp.add_server {
--   name = "erlang_ls",
--   language = "erlang",
--   file_patterns = { "%.erl$", "%.hrl$" },
--   command = { 'Erlang', 'LS' },
--   verbose = false
-- }

---# Lisp
--- __Status__: Untested (AUR package missing)
--- __Site__: https://github.com/cxxxr/cl-lsp
--- __Installation__: ?
-- lsp.add_server {
--   name = "lisp_lsp",
--   language = "lisp",
--   file_patterns = { "%.lsp$", "%.lisp$" },
--   command = { "" },
--   verbose = false
-- }

---# Arduino
--- __Status__: Untested
--- __Site__: https://github.com/arduino/arduino-language-server
--- __Installation__: ?
-- lspconfig.arduinols = add_lsp {
--   name = "arduinols",
--   language = "arduino",
--   file_patterns = { "%.ino$" },
--   command = { "" },
--   verbose = false
-- }

---# OpenSCAD
--- __Status__: Untested
--- __Site__: https://github.com/Leathong/openscad-LSP
--- __Installation__: ?
-- lspconfig.openscadls = add_lsp {
--   name = "openscald",
--   language = "openscad",
--   file_patterns = { "%.scad$" },
--   command = { "" },
--   verbose = false
-- }

---# Odin
--- __Status__: Works
--- __Site__: https://github.com/DanielGavin/ols
--- __Installation__: `paru -S odinls`
lsp.add_server {
  name = "odinls",
  language = "odin",
  file_patterns = { "%.odin$" },
  command = { "ols" },
  verbose = false
}

-- lint+
--local lintplus = require "plugins.lintplus"
--lintplus.setup.lint_on_doc_load()  -- enable automatic linting upon opening a file
--lintplus.setup.lint_on_doc_save()  -- enable automatic linting upon saving a file
--lintplus.load({"luacheck",
--               "shellcheck",
--               "python",
--               "lacheck"})
-- lsp_c already provides it
-- jdtls already provides it
-- rust-analyzer already provides it
-- rlanguageserver already provides it
-- vscode-json-languageserver already provides it
-- intelephense already provides is
-- sqlls already provides it
-- elixir has a project-dependent linter
-- odinls already provides it

-- snippets
local snippets = require "plugins.snippets"
require "plugins.snippets.markdown"
require "plugins.snippets.bash"
require "plugins.snippets.tex"
require "plugins.snippets.lua"
require "plugins.snippets.cpp"
require "plugins.snippets.java"
--require "plugins.snippets.r"
--require "plugins.snippets.sql"
--require "plugins.snippets.html"
--require "plugins.snippets.css"
--require "plugins.snippets.js"

-- lite-xl-terminal
-- change terminal colors
config.plugins.terminal = common.merge({
  background = { common.color "#282C34" },
  text = { common.color "#D8DEE9" }
}, config.plugins.terminal)

-- lite-xl-build
config.plugins.build= common.merge({
  drawer_size = 300
})

-- lite-xl-debugger
-- ?

-- lite-xl-scm
local StatusView = require "core.statusview"
-- change status view box position
core.add_thread(function() -- Wait until everything is loaded to move the statusbar item
  core.status_view:move_item("status:scm", 4, StatusView.Item.LEFT)
end)

-- gitblame
keymap.add({ ["alt+b"] = "git blame:toggle" })

-- todotreeview
config.treeview_size = 600 * SCALE  -- set view width
config.todo_mode = "tag"  -- Change display mode (file/tag)
config.todo_expanded = true  -- Tells if the plugin should start with the nodes expanded

-- mdpreview
keymap.add({ ["ctrl+alt+m"] = "mdpreview:showpreview" }, true)
" >> ~/.config/lite-xl/init.lua
