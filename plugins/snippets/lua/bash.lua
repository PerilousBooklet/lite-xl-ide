local snippets = require 'plugins.snippets'

-- shebang
snippets.add {
    trigger  = 'shebang',
    files    = '%.sh$',
    info     = 'shebang',             -- optional, used by the autocomplete menu
    desc     = 'standard binary path', -- optional, used by the autocomplete menu
    format   = 'lsp',                -- 'lsp' must be lowercase
    template = [[
#!/usr/bin/bash
]]
}

-- if

-- if else

-- for

-- while

-- do while

-- func

-- ?
