if not pcall(require, "colorbuddy") then return end

require("colorbuddy").colorscheme("onebuddy")
-- require("colorizer").setup()

local Color, c, Group, g, s = require("colorbuddy").setup()
-- local c = require("colorbuddy.color").colors
-- local Group = require("colorbuddy.group").Group
-- local g = require("colorbuddy.group").groups
-- local s = require("colorbuddy.style").styles
Color.new("mono_5", "#202328")
Group.new('StatusLine', c.mono_1, c.mono_5, no)
Group.new("comment", c.mono_3, nil, nil)
Group.new('vimLineComment', c.mono_3, c.none, no)

-- I don't think I like highlights for text
-- Group.new("LspReferenceText", nil, c.gray0:light(), s.bold)
-- Group.new("LspReferenceRead", nil, c.gray0:light())
-- Group.link("LspReferenceWrite", g.LspReferenceRead)
-- Group.new("LspReferenceWrite", nil, c.gray0:light())

-- Group.new("FloatBorder", c.gray0:light(), g.NormalFloat)

-- Group.new("TSKeyword", c.purple, nil, s.underline, c.blue)
-- Group.new("LuaFunctionCall", c.green, nil, s.underline + s.nocombine, g.TSKeyword.guisp)
