vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- scrolling
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down" }) -- scroll down
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up" }) -- scroll up
keymap.set("n", "n", "nzzzv", { desc = "Move to next search result" }) -- move to next search result
keymap.set("n", "N", "Nzzzv", { desc = "Move to previous search result" }) -- move to previous search result

-- Resets
keymap.set("n", "<C-o>", "<C-o>zz", { desc = "Jump to previous location" }) -- jump to previous location
keymap.set("i", "jj", "<ESC>", { desc = "Exit insert mode with jj" }) -- exit insert mode with jj

-- line move
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Disable arrow keys in normal mode
keymap.set("n", "<Up>", "<NOP>", { noremap = true, silent = true })
keymap.set("n", "<Down>", "<NOP>", { noremap = true, silent = true })
keymap.set("n", "<Left>", "<NOP>", { noremap = true, silent = true })
keymap.set("n", "<Right>", "<NOP>", { noremap = true, silent = true })

-- Disable arrow keys in insert mode
keymap.set("i", "<Up>", "<NOP>", { noremap = true, silent = true })
keymap.set("i", "<Down>", "<NOP>", { noremap = true, silent = true })
keymap.set("i", "<Left>", "<NOP>", { noremap = true, silent = true })
keymap.set("i", "<Right>", "<NOP>", { noremap = true, silent = true })

-- Disable arrow keys in visual mode
keymap.set("v", "<Up>", "<NOP>", { noremap = true, silent = true })
keymap.set("v", "<Down>", "<NOP>", { noremap = true, silent = true })
keymap.set("v", "<Left>", "<NOP>", { noremap = true, silent = true })
keymap.set("v", "<Right>", "<NOP>", { noremap = true, silent = true })
