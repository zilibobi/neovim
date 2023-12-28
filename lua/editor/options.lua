local opt = vim.opt

-- show line numbers
opt.number = true
opt.relativenumber = true

-- indentation and new lines
opt.tabstop = 2 -- 2 spaces for tabs
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- convert tabs to spaces
opt.autoindent = true -- use the same indentation when creating a new line

-- disable line wrapping
opt.wrap = false

-- cursor line
opt.cursorline = true -- highlight the current cursor line

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- custom undo
opt.swapfile = false
opt.backup = false
opt.undofile = true
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

opt.updatetime = 50

-- search
opt.hlsearch = false
opt.incsearch = true

-- colors
opt.termguicolors = true

-- don't comment the next line when creating it from a commented line
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
	command = "set formatoptions-=cro",
})
