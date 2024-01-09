-- this module will be loaded after everything else when the application starts
-- it will be automatically reloaded when saved

local core = require "core"
local keymap = require "core.keymap"
local config = require "core.config"
local style = require "core.style"

-- modify list of files to ignore when indexing the project:
config.ignore_files = {
  -- folders
  "^%.svn/", "^%.git/", "^%.hg/", "^CVS/", "^%.Trash/", "^%.Trash%-.*/", "^node_modules/", "^%.cache/", "^__pycache__/",
  -- files
  "%.pyc$", "%.pyo$", "%.exe$", "%.dll$", "%.obj$", "%.o$", "%.a$", "%.lib$", "%.so$", "%.dylib$", "%.ncb$", "%.sdf$",
  "%.suo$", "%.pdb$", "%.idb$", "%.psd$", "%.db$", "^desktop%.ini$", "^%.DS_Store$", "^%.directory$",
  -- images
  "%.png$","%.svg$","%.jpg$","%.jpeg$",
  -- lite xl project file
  "^%.lite_project.lua",
  "%.class$", "%.jar$",
  "^%.SRCINFO$",
  "%.tar$", "%.tar.gz$", "%.tar.pkg.zst$", "%.zip$", "%.gzip$", "%.7z$",
  -- Some other files
  "%.gitignore$", "Cargo.lock$"
}

-- project tree view width
local common = require "core.common"
config.plugins.treeview = common.merge({
  size = 400 * SCALE,
}, config.plugins.treeview)

-- tab indentation
config.tab_type = "soft" -- soft for spaces, hard for real tabs (\t)
config.indent_size = 2


------------
-- THEMES --
------------

core.reload_module("colors.onedark")


------------------
-- KEY BINDINGS --
------------------

-- key bindings:
keymap.add({ ["ctrl+q"] = "core:quit" })
keymap.add({ ["alt+pageup"] = "root:switch-to-previous-tab", ["alt+pagedown"] = "root:switch-to-next-tab" }, true)
--keymap.add({ ["ctrl+alt+pageup"] = "opacity:?", ["ctrl+alt+pagedown"] = "opacity:?" }, true)


-----------
-- FONTS --
-----------

style.font = renderer.font.load(USERDIR .. "/fonts/SauceCodeProNerdFont-Regular.ttf", 17 * SCALE)
style.code_font = renderer.font.load(USERDIR .. "/fonts/SauceCodeProNerdFont-Regular.ttf", 18 * SCALE)


-------------
-- PLUGINS --
-------------

-- disabled plugins
--config.plugins.build = false
config.plugins.debugger = false
--config.plugins.ide = false
--config.plugins.todotreeview = false

-- opacity
system.set_window_opacity(1.00)
--keymap.add({ ["alt+i"] = "opacity:increase" }, true)
--keymap.add({ ["alt+d"] = "opacity:decrease" }, true)

-- lite-xl-lsp
local lsp = require "plugins.lsp"
local lspconfig = require "plugins.lsp.config"

-- enable lsp server implementations
--lspconfig.sumneko_lua.setup() -- Lua
--lspconfig.ccls.setup() -- C/C++
--lspconfig.jdtls.setup() -- Java
lspconfig.pylsp.setup() -- Python
lspconfig.html.setup() -- HTML
lspconfig.cssls.setup() -- CSS
--lspconfig.tsserver.setup() -- JS/TS
--lspconfig.intelephense.setup() -- PHP
lspconfig.jsonls.setup() -- JSON
lspconfig.texlab.setup() -- TeX
lspconfig.bashls.setup() -- Bash

-- lsp server implementations

---# Java
--- __Status__: Works
--- __Site__: https://github.com/eclipse/eclipse.jdt.ls
--- __Installation__: `paru -S jdtls` or `lpm install lsp_java`
lsp.add_server {
  name = "jdtls",
  language = "java",
  file_patterns = { "%.java$" },
  command = { "jdtls" },
  verbose = false
}

---# Tailwind CSS
--- __Status__: Broken (freezes when writing classes)
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

---# XML
--- __Status__: Works
--- __Site__: https://github.com/eclipse/lemminx
--- __Installation__: 'paru -S lemminx' or `lpm install lsp_xml`
lsp.add_server {
  name = "lemminx",
  language = "xml",
  file_patterns = { "%.xml$" },
  command = { "lemminx" },
  verbose = false
}

-- ---# Flow - JavaScript
-- --- __Status__: Untested
-- --- __Site__: https://flow.org/
-- --- __Installation__: `npm install -g flow-bin`
-- lsp.add_server {
--   name = "flow",
--   language = "javascript",
--   file_patterns = { "%.js$", "%.jsx$" },
--   command = { "flow", "lsp" },
--   verbose = false
-- }

-- ---# intelephense - PHP
-- --- __Status__: Works
-- --- __Site__: https://github.com/bmewburn/intelephense-docs
-- --- __Installation__: `npm -g install intelephense`
-- --- __Note__: Set your license and storage by passing the init_options as follows:
-- --- ```lua
-- --- init_options = { licenceKey = "...", storagePath = "/some/path"}
-- --- ```
-- lsp.add_server {
--   name = "intelephense",
--   language = "php",
--   file_patterns = { "%.php$" },
--   command = { "intelephense", "--stdio" },
--   verbose = false
-- }

---# PerlNavigator - Perl
--- __Status__: Untested
--- __Site__: https://github.com/bscan/PerlNavigator
--- __Installation__: paru -S perlnavigator
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


-- lint+
local lintplus = require "plugins.lintplus"

lintplus.setup.lint_on_doc_load()  -- enable automatic linting upon opening a file
lintplus.setup.lint_on_doc_save()  -- enable automatic linting upon saving a file

lintplus.load("luacheck") -- Lua
--lintplus.load("") -- C/C++
-- jdtls already provides it
lintplus.load("python") -- Python
--lintplus.load("") -- HTML
--lintplus.load("") -- CSS
--lintplus.load("") -- JS/TS
--lintplus.load("") -- PHP
lintplus.load("shellcheck") -- Bash
--lintplus.load("") -- TeX
-- rust-analyzer already provides it

-- snippets
local snippets = require "plugins.snippets"
require "plugins.snippets.lua.lua"
require "plugins.snippets.lua.bash"
require "plugins.snippets.lua.tex"
require "plugins.snippets.lua.c"
require "plugins.snippets.lua.cpp"
require "plugins.snippets.lua.java"
require "plugins.snippets.lua.python"
require "plugins.snippets.lua.markdown"
require "plugins.snippets.lua.html"
--require "plugins.snippets.lua.css"
--require "plugins.snippets.lua.js"

-- lite-xl-terminal

-- change terminal colors
config.plugins.terminal = common.merge({
  background = { common.color "#282C34" },
  text = { common.color "#D8DEE9" }
}, config.plugins.terminal)

-- lite-xl-build
-- ?

-- lite-xl-debugger
-- ?

-- lite-xl-scm
local StatusView = require "core.statusview"
-- change status view box position
core.add_thread(function() -- Wait until everything is loaded to move the statusbar item
  core.status_view:move_item("status:scm", 4, StatusView.Item.LEFT)
end)

-- todotreeviewxl
config.treeview_size = 750 * SCALE  -- set view width
--config.todo_mode = "tag"  -- Change display mode (file/tag)
--config.todo_expanded = false  -- Tells if the plugin should start with the nodes expanded

-- mdpreview
--keymap.add({ ["ctrl+alt+m"] = "mdpreview:showpreview" }, true)

-----------------------
-- MY CUSTOM PLUGINS --
-----------------------

-- lite-xl-ptm
-- ?

