local snippets = require 'plugins.snippets'

-- shebang
snippets.add {
    trigger  = 'shebang',
    files    = '%.pl$',
    info     = 'shebang',             -- optional, used by the autocomplete menu
    desc     = '?', -- optional, used by the autocomplete menu
    format   = 'lsp',                -- 'lsp' must be lowercase
    template = [[
#!/usr/bin/perl
]]
}
