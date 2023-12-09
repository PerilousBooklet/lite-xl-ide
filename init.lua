-- put user settings here
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
  -- lite xl project file
  "^%.lite_project.lua",
  --"%.class$", "%.jar$",
  "^%.SRCINFO$",
  "%.tar$", "%.tar.gz$", "%.tar.pkg.zst$", "%.zip$", "%.gzip$", "%.7z$",
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

-- key binding:
keymap.add({ ["ctrl+q"] = "core:quit" })
-- pass 'true' for second parameter to overwrite an existing binding
keymap.add({ ["alt+pageup"] = "root:switch-to-previous-tab" }, true)
keymap.add({ ["alt+pagedown"] = "root:switch-to-next-tab" }, true)


-----------
-- FONTS --
-----------

-- customize fonts:
style.font = renderer.font.load(USERDIR .. "/fonts/SauceCodeProNerdFont-Regular.ttf", 17 * SCALE)
style.code_font = renderer.font.load(USERDIR .. "/fonts/SauceCodeProNerdFont-Regular.ttf", 18 * SCALE)

--
-- DATADIR is the location of the installed Lite XL Lua code, default color
-- schemes and fonts.
-- USERDIR is the location of the Lite XL configuration directory.
--
-- font names used by lite:
-- style.font          : user interface
-- style.big_font      : big text in welcome screen
-- style.icon_font     : icons
-- style.icon_big_font : toolbar icons
-- style.code_font     : code
--
-- the function to load the font accept a 3rd optional argument like:
--
-- {antialiasing="grayscale", hinting="full", bold=true, italic=true, underline=true, smoothing=true, strikethrough=true}
--
-- possible values are:
-- antialiasing: grayscale, subpixel
-- hinting: none, slight, full
-- bold: true, false
-- italic: true, false
-- underline: true, false
-- smoothing: true, false
-- strikethrough: true, false


-------------
-- PLUGINS --
-------------

-- disabled plugins
config.plugins.memoryusage = false
config.plugins.litepresence = false
--config.plugins.build = false
config.plugins.debugger = false
--config.plugins.ide = false

-- opacity
system.set_window_opacity(1.00)
--keymap.add({ ["alt+i"] = "opacity:increase" }, true)
--keymap.add({ ["alt+d"] = "opacity:decrease" }, true)

-- lite-xl-lsp
local lsp = require "plugins.lsp"
local lspconfig = require "plugins.lsp.config"

-- enable lsp server implementations
lspconfig.sumneko_lua.setup() -- Lua
lspconfig.ccls.setup() -- C/C++
lspconfig.pylsp.setup() -- Python
lspconfig.html.setup() -- HTML
lspconfig.cssls.setup() -- CSS
--lspconfig.tsserver.setup() -- JS/TS
--lspconfig.intelephense.setup() -- PHP
lspconfig.jsonls.setup() -- JSON
lspconfig.texlab.setup() -- TeX
lspconfig.bashls.setup() -- Bash

-- add lsp server implementations

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

-- Tailwind CSS
--- __Status__: Untested
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

-- lint+
local lintplus = require "plugins.lintplus"

lintplus.setup.lint_on_doc_load()  -- enable automatic linting upon opening a file
lintplus.setup.lint_on_doc_save()  -- enable automatic linting upon saving a file

lintplus.load("luacheck") -- Lua
lintplus.load("shellcheck") -- Bash
lintplus.load("python") -- Python

-- snippets
local snippets = require "plugins.snippets"
require "plugins.snippets.lua.lua"
require "plugins.snippets.lua.bash"
require "plugins.snippets.lua.tex"
require "plugins.snippets.lua.c"
require "plugins.snippets.lua.cpp"
require "plugins.snippets.lua.java"
require "plugins.snippets.lua.python"
require "plugins.snippets.lua.html"
--require "plugins.snippets.lua.css"
--require "plugins.snippets.lua.js"
--require "plugins.snippets.lua.php"
--require "plugins.snippets.lua.r"
--local lsp_snippets = require 'plugins.lsp_snippets' -- import vscode snippets
--lsp_snippets.add_paths {
--  './plugins/snippets/vscode'
--}

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

-- todotreeview-xl

-- set view width
--config.treeview_size = 1000 * SCALE

-- Change display mode
--config.todo_mode = "file"

-- Tells if the plugin should start with the nodes expanded
--config.todo_expanded = false

-- Add extra tags
--table.insert(config.todo_tags, {"CLEANUP"})

-- Ignore directory and ignore specific file
--table.insert(config.ignore_paths, {"README.md", ".lite_project.lua"})

-- disable todotreeview at startup
--local todotreeview = "config.plugins.todotreeview-xl.TodoTreeView"
--todotreeview = function ()
--  TodoTreeView.super.new(self)
--  self.scrollable = false
--end

-- ghmarkdown
-- theme ?

-----------------------
-- MY CUSTOM PLUGINS --
-----------------------

-- lite-xl-ptm
-- ?

-- filetreeview
-- ?
