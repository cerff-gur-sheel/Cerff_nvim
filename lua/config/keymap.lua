local vim = vim

-- Set leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Default keymap options
local opts = {
	noremap = true,
	silent = true,
}

-- General keymaps
vim.api.nvim_set_keymap("n", "<CR>", "<cmd>FineCmdline<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", ":", "<cmd>FineCmdline<CR>", { noremap = true })
vim.keymap.set("n", "<C-s>", "<cmd>w<CR>", { desc = "Save file", noremap = true, silent = true })
vim.keymap.set("n", "<C-q>", "<cmd>q<CR>", { desc = "Quit current window", noremap = true, silent = true })
vim.keymap.set("n", "<S-q>", "<cmd>qa!<CR>", { desc = "Force quit all Neovim windows", noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { desc = "Disable space key", noremap = true, silent = true })
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlight", noremap = true, silent = true })

-- Terminal keymaps

vim.keymap.set(
	"n",
	"<leader>tth",
	"<C-w>s<C-w><C-j>:terminal<CR>",
	{ desc = "Abrir terminal horizontal", noremap = true, silent = true }
)

vim.keymap.set(
	"n",
	"<leader>ttv",
	"<C-w>v<C-w><C-l>:terminal<CR>",
	{ desc = "Abrir terminal vertical", noremap = true, silent = true }
)
vim.keymap.set("n", "<leader>ttf", function()
	local buf = vim.api.nvim_create_buf(false, true) -- create scratch buffer

	local width = math.floor(vim.o.columns * 0.8)
	local height = math.floor(vim.o.lines * 0.8)
	local row = math.floor((vim.o.lines - height) / 2)
	local col = math.floor((vim.o.columns - width) / 2)

	local win = vim.api.nvim_open_win(buf, true, {
		relative = "editor",
		width = width,
		height = height,
		row = row,
		col = col,
		style = "minimal",
		border = "rounded",
	})

	vim.fn.termopen(os.getenv("SHELL")) -- abre terminal com shell padrão
	vim.cmd("startinsert")
end, { desc = "Open terminal in floating window", noremap = true, silent = true })

vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode", noremap = true, silent = true })

-- Window navigation
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window", noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window", noremap = true, silent = true })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window", noremap = true, silent = true })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window", noremap = true, silent = true })

-- Scrolling with centering
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll half-page down and center", noremap = true, silent = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll half-page up and center", noremap = true, silent = true })

-- Search navigation with centering
vim.keymap.set("n", "n", "nzzzv", { desc = "Go to next search result and center", noremap = true, silent = true })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Go to previous search result and center", noremap = true, silent = true })

-- Window resizing
vim.keymap.set("n", "k", ":resize -2<CR>", { desc = "Decrease window height", noremap = true, silent = true })
vim.keymap.set("n", "j", ":resize +2<CR>", { desc = "Increase window height", noremap = true, silent = true })
vim.keymap.set("n", "h", ":vertical resize -2<CR>", { desc = "Decrease window width", noremap = true, silent = true })
vim.keymap.set("n", "l", ":vertical resize +2<CR>", { desc = "Increase window width", noremap = true, silent = true })

-- Buffer management
vim.keymap.set("n", "<Tab>", ":bnext<CR>", { desc = "Go to next buffer", noremap = true, silent = true })
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", { desc = "Go to previous buffer", noremap = true, silent = true })
vim.keymap.set("n", "<leader>x", ":bdelete!<CR>", { desc = "Close current buffer", noremap = true, silent = true })
vim.keymap.set("n", "<leader>b", "<cmd>enew<CR>", { desc = "Open new empty buffer", noremap = true, silent = true })

-- Window management
vim.keymap.set("n", "<leader>v", "<C-w>v", { desc = "Split window vertically", noremap = true, silent = true })
vim.keymap.set("n", "<leader>h", "<C-w>s", { desc = "Split window horizontally", noremap = true, silent = true })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make split windows equal size", noremap = true, silent = true })
vim.keymap.set("n", "<leader>xs", ":close<CR>", { desc = "Close current split window", noremap = true, silent = true })

-- Tab management
vim.keymap.set("n", "<leader>to", ":tabnew<CR>", { desc = "Open new tab", noremap = true, silent = true })
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>", { desc = "Close current tab", noremap = true, silent = true })
vim.keymap.set("n", "<leader>tn", ":tabnext<CR>", { desc = "Go to next tab", noremap = true, silent = true })
vim.keymap.set("n", "<leader>tp", ":tabprevious<CR>", { desc = "Go to previous tab", noremap = true, silent = true })

-- Toggle options
vim.keymap.set(
	"n",
	"<leader>lw",
	"<cmd>set wrap!<CR>",
	{ desc = "Toggle line wrapping", noremap = true, silent = true }
)

-- Visual mode improvements
vim.keymap.set("v", "<", "<gv", { desc = "Indent left and stay in visual mode", noremap = true, silent = true })
vim.keymap.set("v", ">", ">gv", { desc = "Indent right and stay in visual mode", noremap = true, silent = true })
vim.keymap.set("v", "p", '"_dP', { desc = "Paste without overwriting register", noremap = true, silent = true })

vim.keymap.set("n", "<S-d>", "yyp", opts)
vim.keymap.set("n", "<C-Del>", "dd", opts)

-- Search and replace
vim.keymap.set({ "n", "v" }, "<leader>r", function()
	local word = ""
	local nword = ""

	if vim.fn.mode():match("[vV]") then
		word = vim.fn.expand("<cword>")
		nword = vim.fn.input("Replace " .. word .. " with: ")
	elseif vim.fn.mode():match("n") then
		word = vim.fn.input("Search for: ")
		if word == "" then
			return
		end
		nword = vim.fn.input("Replace " .. word .. " with: ")
	end

	if nword ~= "" then
		vim.cmd("%s/\\<" .. word .. "\\>/" .. nword .. "/g")
	end
end, {
	desc = "Search and replace word or selection",
	noremap = true,
	silent = true,
})
