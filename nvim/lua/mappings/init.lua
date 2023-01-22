-- [[ keys ]]
local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local keymap = vim.keymap

local maps = { i = {}, n = {}, v = {}, t = {}, [""] = {} }

maps[""]["<Space>"] = "<Nop>"

-- Basics:

-- Search: clear search
map("n", "<leader>l", ":noh<CR>", default_opts)

map("n", "<C-w><", ":vertical resize -30<CR>", default_opts)
map("n", "<C-w>>", ":vertical resize +30<CR>", default_opts)

keymap.set("n", "<C-w><up>", "10<C-w>+")
keymap.set("n", "<C-w><down>", "10<C-w>-")

-- Bufferline: next tab/buffer
map("n", "<Tab>", ":BufferLineCycleNext<CR>", default_opts)

-- Bufferline: previous tab/buffer
map("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", default_opts)

-- NvimTree: toggle file explorer
map("n", "<leader>e", ":NvimTreeToggle<CR>", default_opts)

-- NvimTree: show current file in file explorer
map("n", "<leader>sf", ":NvimTreeFindFile<CR>", default_opts)

-- Illuminate
map("n", "<leader>n", '<cmd>lua require"illuminate".next_reference{wrap=true}<cr>', { noremap = true })
map("n", "<leader>p", '<cmd>lua require"illuminate".next_reference{reverse=true,wrap=true}<cr>', { noremap = true })

-- Telescope: find files
map("n", "<leader>ff", ":Telescope find_files<CR>", {})

-- Telescope: find in files by word
map("n", "<leader>fw", ":Telescope live_grep<CR>", {})

-- Telescope: find in files by word under cursor
map("n", "<leader>fc", ":Telescope grep_string<CR>", {})

-- Telescope: find in current open file
map("n", "<leader>fz", ":Telescope current_buffer_fuzzy_find<CR>", {})

-- Telescope: git status list file
map("n", "<leader>gt", ":Telescope git_status<CR>", {})

-- Telescope: git branches list
map("n", "<leader>gb", ":Telescope git_branches<CR>", {})

-- Telescope: git commits list
map("n", "<leader>gc", ":Telescope git_commits<CR>", {})

-- Spectre: open search panel
map("n", "<leader>S", ":lua require('spectre').open()<CR>", {})

-- Telescope:
--[[ maps.n["<leader>fo"] = { function() require("telescope.builtin").oldfiles() end, desc = "Search history" } ]]
--[[ maps.n["<leader>sr"] = { function() require("telescope.builtin").registers() end, desc = "Search registers" } ]]
--[[ maps.n["<leader>sk"] = { function() require("telescope.builtin").keymaps() end, desc = "Search keymaps" } ]]
--[[ maps.n["<leader>sc"] = { function() require("telescope.builtin").commands() end, desc = "Search commands" } ]]
--[[]]
--[[ maps.n["<leader>lG"] = ]]
--[[   { function() require("telescope.builtin").lsp_workspace_symbols() end, desc = "Search workspace symbols" } ]]
--[[ maps.n["<leader>lR"] = { function() require("telescope.builtin").lsp_references() end, desc = "Search references" } ]]
--[[ maps.n["<leader>lD"] = { function() require("telescope.builtin").diagnostics() end, desc = "Search diagnostics" } ]]

-- Spectre
--[[ maps.n["leader>S"] = { function() require("spectre").open() end, desc = "Open search panel" } ]]

utils.set_mappings(maps, {})
