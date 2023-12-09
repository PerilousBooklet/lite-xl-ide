local snippets = require 'plugins.snippets'

-- document
snippets.add {
    trigger  = 'doc',
    files    = '%.html$',
    info     = 'Basic document structure', -- optional, used by the autocomplete menu
    desc     = '', -- optional, used by the autocomplete menu
    format   = 'lsp', -- 'lsp' must be lowercase
    template = [[
<!DOCTYPE html>
<html lang="en">
    
    <head>
      <meta charset="UTF-8"></meta>
      <meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
      <title></title>
    </head>
    
    <body>
      <!-- Main content -->
    </body>

</html> 
]]
}

-- comment
snippets.add {
    trigger  = 'cmt',
    files    = '%.html$',
    info     = 'Basic document structure', -- optional, used by the autocomplete menu
    desc     = '', -- optional, used by the autocomplete menu
    format   = 'lsp', -- 'lsp' must be lowercase
    template = [[
<!-- $1 -->
]]
}
