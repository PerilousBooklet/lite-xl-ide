local snippets = require 'plugins.snippets'

-- main class
snippets.add {
    trigger  = 'mc',
    files    = '%.java$',
    info     = 'Main class', -- optional, used by the autocomplete menu
    desc     = '?', -- optional, used by the autocomplete menu
    format   = 'lsp', -- 'lsp' must be lowercase
    template = [[
class $1 {
    // Attributes
    $2

    // Custom methods
    $3

    // Main method
    public static void main (String[] args) {
        $4
    }
}
]]
}

-- main method
snippets.add {
    trigger  = 'mm',
    files    = '%.java$',
    info     = 'Main method', -- optional, used by the autocomplete menu
    desc     = '?', -- optional, used by the autocomplete menu
    format   = 'lsp', -- 'lsp' must be lowercase
    template = [[
public static void main (String[] args) {
    $1
}
]]
}

-- constructor
snippets.add {
    trigger  = 'constr',
    files    = '%.java$',
    info     = 'Constructor', -- optional, used by the autocomplete menu
    desc     = '?', -- optional, used by the autocomplete menu
    format   = 'lsp', -- 'lsp' must be lowercase
    template = [[
public $1() {
    $2
}
]]
}

-- fori

-- foreach

-- dowhile

-- while

-- if

-- ifelse

-- ?
