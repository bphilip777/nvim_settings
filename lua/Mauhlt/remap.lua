local opts=
{ 
  noremap = true, 
  silent = true 
}
local term_opts=
{ 
  silent = true 
}
local keymap = vim.api.nvim_set_keymap

--Remap leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--Modes
--normal = n
--insert = i
--visual = v
--visual block = x
--term = t
--command = c

--Normal--
--Window
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

--Resize
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical +2<CR>", opts)

--Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

--Go to file search
keymap("n", "<leader>pv", ":Lex<CR>", opts)

--Let's you move highlights up/down
keymap("v", "J", ":m '>+1<CR>gv=gv", opts)
keymap("v", "K", ":m '<-2<CR>gv=gv", opts)

--Concatenates lines
keymap("n", "J", "mzJ`z", opts)

--Page Up/Down
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)

--Holds window in same place while looping through regexes
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)

--Cuts w/ occupying buffer
keymap("x", "<leader>p", [["_dP]], opts)

--Second great remaps
keymap("n", "<leader>y", [["+y]], opts)
keymap("v", "<leader>y", [["+y]], opts)
keymap("n", "<leader>Y", [["+Y]], opts)

--Delete line
keymap("n", "<leader>d", [["_d]], opts)
keymap("v", "<leader>d", [["_d]], opts)

keymap("i", "<C-c>", "<Esc>", opts)

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

keymap("n", "<leader>k", "<cmd>lnext<CR>zz", opts)
keymap("n", "<leader>j", "<cmd>lprev<CR>zz", opts)

--Exit different modes
keymap("n", "jk", "<ESC>", opts)
keymap("v", "jk", "<ESC>", opts)
keymap("n", "kj", "<ESC>", opts)
keymap("v", "kj", "<ESC>", opts)
keymap("i", "jk", ":w<ESC>", opts)
keymap("i", "jk", ":w<ESC>", opts)

--Resource file
keymap("n", "<leader><leader>", ":so", opts)

keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

--Move text up/down
keymap("v", "<C-j>", ":m .+1<CR>==", opts)
keymap("v", "<C-k>", ":m .-2<CR>==", opts)

--Visual Block
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<C-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<C-k>", ":move '<-2<CR>gv-gv", opts)
