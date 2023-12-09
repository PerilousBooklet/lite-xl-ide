-- mod-version:3
local core = require "core"
local command = require "core.command"
local keymap = require "core.keymap"

-- color variables

-- nord theme
-- ...

-- onedark theme
local body = "#ECEFF4"
local hr = "#ABB2BF"
local code = "#282C34"
local pre = "#282C34"
local a = "#C678DD"
local table = "#ABB2BF"
local th = "#ABB2BF"
local td = "#ABB2BF"

-- ?
local html = [[
<html>
  <style>
    body {
      margin:80 auto 100 auto;
      max-width: 750px;
      line-height: 1.6;
      font-family: Open Sans, Arial;
      color: #ECEFF4;
      padding: 0 10px;
      background: #282C34;
    }
    h1, h2, h3 { line-height: 1.2; padding-top: 14px; }
    hr { border: 0px; border-top: 1px solid #ABB2BF; }
    code, pre { background: #282C34; padding: 8px; }
    code { padding: 4px; }
    a { text-decoration: none; color: #C678DD; }
    a:hover { text-decoration: underline; }
    table { border-collapse: collapse; }
    table, th, td { border: 1px solid #ABB2BF; padding: 6px; }
  </style>
  <head>
    <title>${title}</title>
  <head>
  <body>
    <script>
      var xhr = new XMLHttpRequest;
      xhr.open("POST", "https://api.github.com/markdown/raw");
      xhr.setRequestHeader("Content-Type", "text/plain");
      xhr.onload = function() { document.body.innerHTML = xhr.responseText; };
      xhr.send("${content}");
    </script>
  </body>
</html>
]]

-- ?
command.add("core.docview!", {
  ["ghmarkdown:show-preview"] = function(dv)
    local content = dv.doc:get_text(1, 1, math.huge, math.huge)
    local esc = { ['"'] = '\\"', ["\n"] = '\\n' }
    local text = html:gsub("${(.-)}", {
      title = dv:get_name(),
      content = content:gsub(".", esc)
    })

    local htmlfile = core.temp_filename(".html")
    local fp = io.open(htmlfile, "w")
    fp:write(text)
    fp:close()

    core.log("Opening markdown preview for \"%s\"", dv:get_name())
    if PLATFORM == "Windows" then
      system.exec("start " .. htmlfile)
    else
      system.exec(string.format("xdg-open %q", htmlfile))
    end

    core.add_thread(function()
      coroutine.yield(5)
      os.remove(htmlfile)
    end)
  end
})

-- ?
keymap.add { ["ctrl+alt+m"] = "ghmarkdown:show-preview" }
