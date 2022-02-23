local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Toggele 'list' option on and off
keymap("n", "<leader>l", ":set list!<CR>", opts)
-- Clean trailing whitespace
keymap("n", "<leader>ts", ":StripWhitespace<CR>", opts)

-- Scroll half screen on Shift-PgUp/PgDown
keymap("n", "<S-PageUp>", "<C-U>", opts)
keymap("n", "<S-PageDown>", "<C-D>", opts)

-- Better window navigation
keymap("n", "<C-Left>", "<C-w>h", opts)
keymap("n", "<C-Down>", "<C-w>j", opts)
keymap("n", "<C-Up>", "<C-w>k", opts)
keymap("n", "<C-Right>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-S-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-S-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-S-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-S-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-Right>", ":bnext<CR>", opts)
keymap("n", "<S-Left>", ":bprevious<CR>", opts)

-- Move text up and down
--keymap("n", "<A-Down>", "<Esc>:m .+1<CR>==gi", opts)
--keymap("n", "<A-Up>", "<Esc>:m .-2<CR>==gi", opts)

-- Convinient shortcuts
keymap("n", "ZZ", ":wqa<CR>", opts)  -- write all buffers and exit
keymap("n", "QQ", ":qa!<CR>", opts)  -- quit all buffers without saving

-- Insert --
-- Press jk fast to enter
keymap("i", "dh", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
--keymap("v", "<A-Down>", ":m .+1<CR>==", opts)
--keymap("v", "<A-Up>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
--keymap("x", "<S-Down>", ":move '>+1<CR>gv-gv", opts)
--keymap("x", "<S-Up>", ":move '<-2<CR>gv-gv", opts)
--keymap("x", "<A-Down>", ":move '>+1<CR>gv-gv", opts)
--keymap("x", "<A-Up>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- File Browser
keymap("n", "<C-n>", ":NvimTreeToggle<CR>", opts)
