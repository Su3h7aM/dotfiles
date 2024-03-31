-- Setup

local o = vim.opt
local g = vim.g

local v = vim.version()

if v.minor >= 10 then
	if not vim.loader.enabled then
		vim.loader.enable()
	end
	o.smoothscroll = true
end

vim.filetype.add({ extension = { templ = "templ" } })

g.mapleader = ' '
g.maplocalleader = ' '

g.netrw_banner = 0
vim.o.autochdir = false

o.termguicolors = true

o.smartindent = true
o.smarttab = true
o.expandtab = true
o.tabstop = 4
o.shiftwidth = 4
o.softtabstop = 4

o.number = true
o.relativenumber = true

o.wrap = false

o.clipboard = "unnamedplus"

o.virtualedit = "block"

o.inccommand = "split"

o.splitbelow = true
o.splitright = true

o.ignorecase = true
