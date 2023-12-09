local snippets = require 'plugins.snippets'

-- shebang
snippets.add {
    trigger  = 'shebang',
    files    = '%.lua$',
    info     = 'shebang',             -- optional, used by the autocomplete menu
    desc     = '?', -- optional, used by the autocomplete menu
    format   = 'lsp',                -- 'lsp' must be lowercase
    template = [[
#!/usr/bin/lua
]]
}

-- for
snippets.add {
    trigger  = 'fori',
    files    = '%.lua$',
    info     = 'ipairs',             -- optional, used by the autocomplete menu
    desc     = 'numerical for loop', -- optional, used by the autocomplete menu
    format   = 'lsp',                -- 'lsp' must be lowercase
    template = [[
for ${1:i}, ${2:v} in ipairs($3) do
    $0
end
]]
}

-- function
snippets.add {
    trigger  = 'func',
    files    = '%.lua$',
    info     = 'function',             -- optional, used by the autocomplete menu
    desc     = 'Basic function syntax', -- optional, used by the autocomplete menu
    format   = 'lsp',                -- 'lsp' must be lowercase
    template = [[
function $1 ()
    $2
end
]]
}
