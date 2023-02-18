startify = require'alpha.themes.startify'

local function info()
  -- local plugins = #vim.tbl_keys(require("packer").plugins())
  local v = vim.version()
  local datetime = os.date " %d-%m-%Y   %H:%M:%S"
  local platform = vim.fn.has "win32" == 1 and "" or ""
  -- return string.format(" %d  %s %d.%d.%d  %s", plugins, platform, v.major, v.minor, v.patch, datetime)
  return string.format(" %d  %s %d.%d.%d  %s", platform, v.major, v.minor, v.patch, datetime)
end

math.randomseed(os.time())
local header_color = "AlphaCol" .. math.random(11)

startify.section.header.opts.position = 'center'
startify.section.header.val = {
        [[                                      ,---,         ]],
        [[       ,---,                         ,--.' |        ]], 
        [[     ,---.'|     __  ,-.         ,--,|  |  :        ]], 
        [[     |   | :   ,' ,'/ /|       ,'_ /|:  :  :        ]], 
        [[     :   : :   '  | |' |  .--. |  | ::  |  |,--.    ]], 
        [[     :     |,-.|  |   ,','_ /| :  . ||  :  '   |    ]], 
        [[     |   : '  |'  :  /  |  ' | |  . .|  |   /' :    ]], 
        [[     |   |  / :|  | '   |  | ' |  | |'  :  | | |    ]], 
        [[     '   : |: |;  : |   :  | : ;  ; ||  |  ' | :    ]], 
        [[     |   | '/ :|  , ;   '  :  `--'   \  :  :_:,'    ]], 
        [[     |   :    | ---'    :  ,      .-./  | ,'        ]], 
        [[     /    \  /           `--`----'   `--''          ]], 
        [[     `-'----'                                       ]], 
        [[                                                    ]] 
}

startify.section.mru.val = {
  {
    type = "text",
    val = " Recent Files",
    opts = { position = 'center', hl = "SpecialComment" }
  },
  {
    type = "group",
    val = function() return { startify.mru(1, false, 5) } end,
    opts = { position = "center" }
  },
  -- {
  --   type = "text",
  --   val = info(),
  --   opts = { hl = header_color, position = "center" }
  -- }
}

startify.section.mru_cwd.val = {
  {
    type = "padding", val = 2
  },
  {
    type = "text", val = " Bookmark", opts = { position = "center", hl = "SpecialComment" }
  }
}

require'alpha'.setup(startify.opts)
