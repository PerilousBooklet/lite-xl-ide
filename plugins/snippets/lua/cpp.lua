local snippets = require 'plugins.snippets'

-- include
snippets.add {
    trigger  = 'incl',
    files    = '%.cpp$',
    info     = 'Include', -- optional, used by the autocomplete menu
    desc     = '', -- optional, used by the autocomplete menu
    format   = 'lsp', -- 'lsp' must be lowercase
    template = [[
#include<$1>;
]]
}

-- namespace
snippets.add {
    trigger  = 'np',
    files    = '%.cpp$',
    info     = 'Namespace', -- optional, used by the autocomplete menu
    desc     = '', -- optional, used by the autocomplete menu
    format   = 'lsp', -- 'lsp' must be lowercase
    template = [[
using $1 namespace;
]]
}

-- main
snippets.add {
    trigger  = 'main',
    files    = '%.cpp$',
    info     = 'Main function', -- optional, used by the autocomplete menu
    desc     = '', -- optional, used by the autocomplete menu
    format   = 'lsp', -- 'lsp' must be lowercase
    template = [[
int main($1) {
    $2;
    return 0;
}
]]
}

-- fori

-- dowhile

-- while

-- if

-- ifelse

-- ?
