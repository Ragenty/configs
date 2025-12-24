-- ==============================================
-- NEOVIM CONFIG
-- ==============================================

-- Command to update :luafile ~/.config/nvim/init.lua or :source %

-- Show absolute line numbers
vim.opt.number = true

-- Show relative line numbers
vim.opt.relativenumber = true

-- Number of spaces a tab counts for
vim.opt.tabstop = 4

-- Number of spaces to use for each step of (auto)indent
vim.opt.shiftwidth = 4

-- Highlight the line where the cursor is
vim.opt.cursorline = true

-- Enable 24-bit RGB color in the terminal
vim.opt.termguicolors = true

-- Ignore case is search patterns
vim.opt.ignorecase = true

-- Override ignorecase if the search contains uppercase letters
vim.opt.smartcase = true

-- Stop auto-inserting comment leader on new lines
vim.opt.formatoptions:remove({ "r", "o" })

-- Auto Complete
vim.opt.completeopt = { "menu", "menuone", "noselect" }

vim.keymap.set("i", "<Tab>", function()
	if vim.fn.pumvisible() == 1 then
		return "<C-n>"
	else
		return "<Tab>"
	end
end, { expr = true })

vim.keymap.set("i", "<S-Tab>", function()
	if vim.fn.pumvisible() == 1 then
		return "<C-p>"
	else
		return "<S-Tab>"
	end
end, { expr = true })

vim.keymap.set("i", "<Down>", function()
	if vim.fn.pumvisible() == 1 then
		return "<C-n>"
	else
		return "<Down>"
	end
end, { expr = true })

vim.keymap.set("i", "<Up>", function()
	if vim.fn.pumvisible() == 1 then
		return "<C-p>"
	else
		return "<Up>"
	end
end, { expr = true })

vim.keymap.set("i", "<CR>", function()
	if vim.fn.pumvisible() == 1 then
		return vim.fn["complete_info"]()["selected"] ~= -1 and "<C-y>" or "<CR>"
	else
		return "<CR>"
	end
end, { expr = true })

vim.opt.omnifunc = "syntaxcomplete#Complete"

--===============================================
-- COLORS AND CUSTOMIZATION
--===============================================

local colors = {
	bg			= "#1a3a2e", -- dark green background
	
	fg			= "#E3F2EA", -- light green text
	fg_dim		= "#B7D1C3",

	green		= "#9fe3c2", -- main green
	green_bold	= "#bdf5d8",

	pink		= "#ffb3d1",
	brown		= "#e0b98a",

	grey		= "#8fb1a1",
	darkgrey	= "#254d32"
}

vim.cmd("highlight clear")
vim.o.background = dark
vim.cmd("syntax reset")

vim.api.nvim_set_hl(0,	"Normal",		{ fg = colors.fg, bg = colors.bg })
vim.api.nvim_set_hl(0,	"CursorLine",	{ bg = colors.darkgrey })
vim.api.nvim_set_hl(0,	"LineNr",		{ fg = colors.grey })
vim.api.nvim_set_hl(0,	"CursorLineNr",	{ fg = colors.green_bold, bold = true })
vim.api.nvim_set_hl(0,	"SignColumn",	{ bg = colors.darkgrey })
vim.api.nvim_set_hl(0,	"VertSplit",	{ fg = colors.bg })

--===============================================
-- SYNTAX
--===============================================

-- Comments
vim.api.nvim_set_hl(0,	"Comment",		{ fg = colors.grey, italic = true })

-- Keywords
vim.api.nvim_set_hl(0,	"Keyword",		{ fg = colors.pink, bold = true })

-- Functions
vim.api.nvim_set_hl(0,	"Function",		{ fg = colors.green })

-- Strings
vim.api.nvim_set_hl(0,	"String",		{ fg = colors.brown })

-- Number / Constants
vim.api.nvim_set_hl(0,	"Number",		{ fg = colors.green_bold })
vim.api.nvim_set_hl(0,	"Constant",		{ fg = colors.green_bold })

-- Variables / Identifiers
vim.api.nvim_set_hl(0,	"Identifier",	{ fg = colors.fg })

--===============================================
-- SELECTION & SEARCH & MENUS
--===============================================

vim.api.nvim_set_hl(0,	"Visual",		{ bg = "#2f6b55" })
vim.api.nvim_set_hl(0,	"Search",		{ fg = colors.bg, bg = colors.pink })

vim.api.nvim_set_hl(0,	"Pmenu",		{ fg = colors.fg, bg = colors.darkgrey })
vim.api.nvim_set_hl(0,	"PmenuSel",		{ fg = colors.bg, bg = colors.green_bold })
