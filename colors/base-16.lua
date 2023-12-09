local style  = require("core.style")
local common = require("core.common")
------------------------------------------------------------------------------------------------------------------------
-- Base16 Google Dark
-- Scheme author: Seth Wright (http://sethawright.com)
------------------------------------------------------------------------------------------------------------------------
local base16 =
{
    ["base00"] = "#1D1F21", -- Default Background
    ["base01"] = "#282A2E", -- Lighter Background (Used for status bars, line number and folding marks)
    ["base02"] = "#373B41", -- Selection Background
    ["base03"] = "#969896", -- Comments, Invisibles, Line Highlighting
    ["base04"] = "#B4B7B4", -- Dark Foreground (Used for status bars)
    ["base05"] = "#C5C8C6", -- Default Foreground, Caret, Delimiters, Operators
    ["base06"] = "#E0E0E0", -- Light Foreground (Not often used)
    ["base07"] = "#FFFFFF", -- Light Background (Not often used)
    ["base08"] = "#CC342B", -- Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted
    ["base09"] = "#F96A38", -- Integers, Boolean, Constants, XML Attributes, Markup Link Url
    ["base0A"] = "#FBA922", -- Classes, Markup Bold, Search Text Background
    ["base0B"] = "#198844", -- Strings, Inherited Class, Markup Code, Diff Inserted
    ["base0C"] = "#3971ED", -- Support, Regular Expressions, Escape Characters, Markup Quotes
    ["base0D"] = "#3971ED", -- Functions, Methods, Attribute IDs, Headings
    ["base0E"] = "#A36AC7", -- Keywords, Storage, Selector, Markup Italic, Diff Changed
    ["base0F"] = "#3971ED", -- Deprecated, Opening/Closing Embedded Language Tags, e.g. <?php ?>
}
------------------------------------------------------------------------------------------------------------------------
-- Interface colors
------------------------------------------------------------------------------------------------------------------------
style.background       = {common.color(base16["base00"])} -- Docview
style.background2      = {common.color(base16["base01"])} -- Treeview
style.background3      = {common.color(base16["base01"])} -- Command view
style.text             = {common.color(base16["base06"])} -- Interface Text Color
style.caret            = {common.color(base16["base05"])} -- Cursor caret
style.accent           = {common.color(base16["base0F"])} -- Accent Color
style.dim              = {common.color(base16["base04"])} -- style.dim - text color for nonactive tabs, tabs divider, prefix in log and search result, hotkeys for context menu and command view
style.divider          = {common.color(base16["base01"])} -- Line between nodes
style.selection        = {common.color(base16["base02"])} -- Selection background
------------------------------------------------------------------------------------------------------------------------
-- Line Numbers
------------------------------------------------------------------------------------------------------------------------
style.line_number      = {common.color(base16["base05"])} -- Color Number
style.line_number2     = {common.color(base16["base0F"])} -- With cursor (Current Line Color)
style.line_highlight   = {common.color(base16["base02"])} -- Current Selected line Background Color
------------------------------------------------------------------------------------------------------------------------
-- Scroolbar colors
------------------------------------------------------------------------------------------------------------------------
style.scrollbar        = {common.color(base16["base02"])} -- Scrollbar color
style.scrollbar2       = {common.color(base16["base0F"])} -- Hovered color
style.scrollbar_track  = {common.color(base16["base01"])} -- Scroolbar free space color
------------------------------------------------------------------------------------------------------------------------
-- Notification Bar
------------------------------------------------------------------------------------------------------------------------
style.nagbar           = {common.color(base16["base09"])} -- Background color
style.nagbar_text      = {common.color(base16["base07"])} -- Text Color
style.nagbar_dim       = {common.color("rgba(0, 0, 0, 0.45)")} -- Interface opacity when nagbar is displayed, use rgba for better result
------------------------------------------------------------------------------------------------------------------------
-- On Drag / Drop Tab colors
------------------------------------------------------------------------------------------------------------------------
style.drag_overlay     = {common.color("rgba(255,255,255,0.1)")} -- Opacity of drop overlay area, use rgba for better result
style.drag_overlay_tab = {common.color(base16["base0F"])} -- Left color when drag tab with mouse cursor
------------------------------------------------------------------------------------------------------------------------
-- Console Icon Colors
------------------------------------------------------------------------------------------------------------------------
style.good             = {common.color(base16["base0B"])} -- Succes
style.warn             = {common.color(base16["base0A"])} -- Warning
style.error            = {common.color(base16["base08"])} -- Error
style.modified         = {common.color(base16["base0F"])} -- Info
------------------------------------------------------------------------------------------------------------------------
-- Syntax colors
------------------------------------------------------------------------------------------------------------------------
style.syntax["normal"]   = {common.color(base16["base05"])} -- Normal (Undefined symbols)
style.syntax["symbol"]   = {common.color(base16["base05"])} -- User Defined variables names
style.syntax["comment"]  = {common.color(base16["base03"])} -- Comment block or line
style.syntax["keyword"]  = {common.color(base16["base0E"])} -- if, else, switch, case
style.syntax["keyword2"] = {common.color(base16["base0E"])} -- new, Float, boolean, bool
style.syntax["number"]   = {common.color(base16["base09"])} -- 0 1 2 3 4 5 6 7 8 9 0
style.syntax["literal"]  = {common.color(base16["base09"])} -- true, false
style.syntax["string"]   = {common.color(base16["base0B"])} -- Strings
style.syntax["operator"] = {common.color(base16["base05"])} -- = + -  < > * % ! ^ |
style.syntax["function"] = {common.color(base16["base0D"])} -- Function Names
------------------------------------------------------------------------------------------------------------------------
-- Log icon colors
------------------------------------------------------------------------------------------------------------------------
style.log["INFO"]  = {icon = "i", color = style.good}
style.log["WARN"]  = {icon = "!", color = style.warn}
style.log["ERROR"] = {icon = "!", color = style.error}
--
-- Result 
return style
