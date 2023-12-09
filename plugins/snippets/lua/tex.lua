local snippets = require 'plugins.snippets'

-- author
snippets.add {
    trigger  = 'auth',
    files    = '%.tex$',
    info     = '',    -- optional, used by the autocomplete menu
    desc     = 'author',     -- optional, used by the autocomplete menu
    format   = 'lsp',        -- 'lsp' must be lowercase
    template = [[
\author{$1}
]]
}

-- title
snippets.add {
    trigger  = 'title',
    files    = '%.tex$',
    info     = '',    -- optional, used by the autocomplete menu
    desc     = 'title',      -- optional, used by the autocomplete menu
    format   = 'lsp',        -- 'lsp' must be lowercase
    template = [[
\title{$1}
]]
}

-- date
snippets.add {
    trigger  = 'dat',
    files    = '%.tex$',
    info     = '',    -- optional, used by the autocomplete menu
    desc     = 'date',       -- optional, used by the autocomplete menu
    format   = 'lsp',        -- 'lsp' must be lowercase
    template = [[
\date{$1}
]]
}

-- begin document
snippets.add {
    trigger  = 'doc',
    files    = '%.tex$',
    info     = '',               -- optional, used by the autocomplete menu
    desc     = 'Document', -- optional, used by the autocomplete menu
    format   = 'lsp',                -- 'lsp' must be lowercase
    template = [[
\begin{document}
    $1
\end{document}
]]
}

-- figure
snippets.add {
    trigger  = 'fig',
    files    = '%.tex$',
    info     = '',    -- optional, used by the autocomplete menu
    desc     = 'figure',     -- optional, used by the autocomplete menu
    format   = 'lsp',        -- 'lsp' must be lowercase
    template = [[
\begin{figure}
    $1
\end{figure}
]]
}

-- table with aligned units
snippets.add {
    trigger  = 'tab',
    files    = '%.tex$',
    info     = '',    -- optional, used by the autocomplete menu
    desc     = 'table',     -- optional, used by the autocomplete menu
    format   = 'lsp',        -- 'lsp' must be lowercase
    template = [[
\begin{table}[h!]
  \begin{center}
    \caption{${1:title}}
    \label{tab:table1}
    \begin{tabular}{l|S|r} % <-- Changed to S here.
      \textbf{$2} & \textbf{$3} & \textbf{$4}\\
      $\$5 & $\$6 & $\$7 \\
      \hline
      1 & $8 & a\\
      2 & $9 & b\\
      3 & $10 & c\\
    \end{tabular}
  \end{center}
\end{table}
]]
}

-- include
snippets.add {
    trigger  = 'inc',
    files    = '%.tex$',
    info     = '',     -- optional, used by the autocomplete menu
    desc     = 'include',     -- optional, used by the autocomplete menu
    format   = 'lsp',         -- 'lsp' must be lowercase
    template = [[
\include{$1}
]]
}

-- use package
snippets.add {
    trigger  = 'pkg',
    files    = '%.tex$',
    info     = '',               -- optional, used by the autocomplete menu
    desc     = 'use package',    -- optional, used by the autocomplete menu
    format   = 'lsp',            -- 'lsp' must be lowercase
    template = [[
\usepackage{$1}
]]
}

-- part
snippets.add {
    trigger  = 'prt',
    files    = '%.tex$',
    info     = '',               -- optional, used by the autocomplete menu
    desc     = 'part',           -- optional, used by the autocomplete menu
    format   = 'lsp',            -- 'lsp' must be lowercase
    template = [[
\part{$1}
]]
}

-- section
snippets.add {
    trigger  = 'sec',
    files    = '%.tex$',
    info     = '',               -- optional, used by the autocomplete menu
    desc     = 'section',        -- optional, used by the autocomplete menu
    format   = 'lsp',            -- 'lsp' must be lowercase
    template = [[
\section{$1}
]]
}

-- subsection
snippets.add {
    trigger  = 'subsec',
    files    = '%.tex$',
    info     = '',               -- optional, used by the autocomplete menu
    desc     = 'subsection',     -- optional, used by the autocomplete menu
    format   = 'lsp',            -- 'lsp' must be lowercase
    template = [[
\subsection{$1}
]]
}

-- chapter
snippets.add {
    trigger  = 'ch',
    files    = '%.tex$',
    info     = '',               -- optional, used by the autocomplete menu
    desc     = 'chapter',        -- optional, used by the autocomplete menu
    format   = 'lsp',            -- 'lsp' must be lowercase
    template = [[
\chapter{$1}
]]
}

