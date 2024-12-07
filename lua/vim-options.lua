vim.cmd("set expandtab") -- Use spaces instead of tab
vim.cmd("set tabstop=2") -- Number of spaces that a <Tab> in the file counts for
vim.cmd("set softtabstop=2") -- Number of spaces that a <Tab> counts for while performing editing operations
vim.cmd("set shiftwidth=2") -- Number of spaces to use for each step of (auto)indent
vim.cmd("set smartindent") -- Do smart autoindenting when starting a new line
vim.cmd("set autoindent") -- Copy indent from current line when starting a new line
vim.cmd("set clipboard=unnamedplus") -- Use system clipboard

vim.g.mapleader = " "
vim.opt.swapfile = false

vim.wo.number = true
vim.wo.relativenumber = false

vim.opt.title = true
vim.opt.titlelen = 0 -- do not shorten title
vim.opt.titlestring = 'nvim %{expand("%:p")}'

vim.o.foldcolumn = "1" -- '0' is not bad
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true

