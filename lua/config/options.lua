-- Enable line numbers and relative line numbers
vim.o.number = true
vim.o.relativenumber = true
vim.o.laststatus = 3

-- Enable mouse support in all modes
vim.o.mouse = "a"

-- Set file encoding to UTF-8
vim.o.fileencoding = "utf-8"

-- Set command line height
vim.o.cmdheight = 0

-- Enable line wrapping and configure wrapping behavior
vim.o.wrap = true
vim.o.linebreak = true

-- Highlight the current line
vim.o.cursorline = true

-- Enable automatic indentation
vim.o.autoindent = true
vim.o.smartindent = true

-- Case sensitivity settings for searches
vim.o.ignorecase = false
vim.o.smartcase = false

-- Disable swap file creation
vim.o.swapfile = true

-- Configure backspace behavior
vim.o.backspace = "indent,eol,start"

-- Tab and indentation settings
vim.o.tabstop = 2 -- Number of spaces tabs count for
vim.o.shiftwidth = 2 -- Number of spaces for autoindent
vim.o.softtabstop = 2 -- Number of spaces for <Tab> in insert mode
vim.o.expandtab = false -- Use actual tab characters instead of spaces

-- Scrolling offsets
vim.o.scrolloff = 10 -- Minimum lines to keep above/below cursor
vim.o.sidescrolloff = 8 -- Minimum columns to keep left/right of cursor

-- Set clipboard to use system clipboard (deferred)
vim.schedule(function()
	vim.o.clipboard = "unnamedplus"
end)

-- Enable 24-bit RGB colors in the terminal
vim.opt.termguicolors = true

-- Allow cursor to move to next line when hitting these keys
vim.o.whichwrap = "bs<>[]hl"

-- Configure popup menu height
vim.o.pumheight = 10

-- Set conceal level (disable conceal)
vim.o.conceallevel = 0

-- Always show the sign column (for diagnostics, git, etc.)
vim.wo.signcolumn = "yes"

-- Enable break indent (indent wrapped lines)
vim.o.breakindent = true

-- Faster completion and update times
vim.o.updatetime = 250

-- Disable backup files
vim.o.backup = false
vim.o.writebackup = false

-- Timeout length for mapped sequences
-- vim.o.timeoutlen = 300

-- Configure completion options for better experience
vim.o.completeopt = "menuone,noselect"

-- Append to short messages to avoid extra messages during completion
vim.opt.shortmess:append("c")

-- Include '-' in keywords (useful for programming)
vim.opt.iskeyword:append("-")

-- Remove automatic comment formatting on new lines
vim.opt.formatoptions:remove({ "c", "r", "o" })

-- Remove a specific runtime path (optional)
vim.opt.runtimepath:remove("/usr/share/vim/vimfiles")
