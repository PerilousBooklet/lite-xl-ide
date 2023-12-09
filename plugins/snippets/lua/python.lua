local snippets = require 'plugins.snippets'

-- shebang
snippets.add {
    trigger  = 'shebang',
    files    = '%.py$',
    info     = 'shebang',             -- optional, used by the autocomplete menu
    desc     = 'standard binary path', -- optional, used by the autocomplete menu
    format   = 'lsp',                -- 'lsp' must be lowercase
    template = [[
#!/usr/bin/python
]]
}

