-- Language English
vim.api.nvim_exec ('language en_US', true)

-- Colorcolumn @ Column 80
vim.opt.colorcolumn = "80"

-- Relative Line Numbers
vim.opt.relativenumber = true

-- Enable Cursorline
vim.opt.cursorline = true
vim.opt.cursorlineopt = "line,number"

-- Fix Cursorline highlighting
vim.cmd [[
   augroup ilikecursorline
      autocmd VimEnter * :highlight CursorLine guibg=#1D1F24
   augroup END
]]

-- Enable Cursorcolumn
vim.opt.cursorcolumn = true

-- Show Cursor as Block
vim.opt.guicursor = 'i:block'

