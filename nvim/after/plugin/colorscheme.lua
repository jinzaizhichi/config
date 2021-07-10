if not pcall(require, "colorbuddy") then return end

require("colorbuddy").colorscheme("onebuddy")
-- require("colorizer").setup()

local Color, c, Group, g, s = require("colorbuddy").setup()
local ul = s.underline
local no = s.NONE
-- local c = require("colorbuddy.color").colors
-- local Group = require("colorbuddy.group").Group
-- local g = require("colorbuddy.group").groups
-- local s = require("colorbuddy.style").styles
Color.new("mono_5", "#202328")
Color.new("lsp_hint", "#50a14f")
Color.new("lsp_info", "#75beff")
Color.new("lsp_warning", "#d19a66")
Color.new("lsp_error", "#c24038")
Group.new('StatusLine', c.mono_1, c.mono_5, no)
Group.new("comment", c.mono_3, nil, nil)
Group.new('vimLineComment', c.mono_3, c.none, no)

Group.new('LspDiagnosticsDefaultError',           c.lsp_error,   c.none,  no)
Group.new('LspDiagnosticsDefaultWarning',         c.lsp_warning,   c.none,  no)
Group.new('LspDiagnosticsDefaultInformation',     c.lsp_info,   c.none,  no)
Group.new('LspDiagnosticsDefaultHint',            c.lsp_hint,   c.none,  no)
Group.new('LspDiagnosticsVirtualTextError',       c.lsp_error,   c.none,  no)
Group.new('LspDiagnosticsVirtualTextWarning',     c.lsp_warning,   c.none,  no)
Group.new('LspDiagnosticsVirtualTextInformation', c.lsp_info,   c.none,  no)
Group.new('LspDiagnosticsVirtualTextHint',        c.lsp_hint,   c.none,  no)
Group.new('LspDiagnosticsUnderlineError',         c.lsp_error,   c.none,  ul)
Group.new('LspDiagnosticsUnderlineWarning',       c.lsp_warning, c.none,  ul)
Group.new('LspDiagnosticsUnderlineInformation',   c.lsp_info,   c.none,  ul)
Group.new('LspDiagnosticsUnderlineHint',          c.lsp_hint,   c.none,  ul)
Group.new('LspDiagnosticsFloatingError',          c.lsp_error,   g.pmenu, ul)
Group.new('LspDiagnosticsFloatingWarning',        c.lsp_warning, g.pmenu, ul)
Group.new('LspDiagnosticsFloatingInformation',    c.lsp_info,   g.pmenu, ul)
Group.new('LspDiagnosticsFloatingHint',           c.lsp_hint,   g.pmenu, ul)
Group.new('LspDiagnosticsSignError',              c.lsp_error,   c.none,  no)
Group.new('LspDiagnosticsSignWarning',            c.lsp_warning, c.none,  no)
Group.new('LspDiagnosticsSignInformation',        c.lsp_info,   c.none,  no)
Group.new('LspDiagnosticsSignHint',               c.lsp_hint,   c.none,  no)

-- I don't think I like highlights for text
-- Group.new("LspReferenceText", nil, c.gray0:light(), s.bold)
-- Group.new("LspReferenceRead", nil, c.gray0:light())
-- Group.link("LspReferenceWrite", g.LspReferenceRead)
-- Group.new("LspReferenceWrite", nil, c.gray0:light())

-- Group.new("FloatBorder", c.gray0:light(), g.NormalFloat)

-- Group.new("TSKeyword", c.purple, nil, s.underline, c.blue)
-- Group.new("LuaFunctionCall", c.green, nil, s.underline + s.nocombine, g.TSKeyword.guisp)
