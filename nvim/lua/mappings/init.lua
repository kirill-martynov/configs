-- [[ keys ]]
local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local keymap = vim.keymap

local maps = { i = {}, n = {}, v = {}, t = {}, [""] = {} }
maps[""]["<Space>"] = "<Nop>"

-- [[ Bufferline ]]
map("n", "<Tab>", ":BufferLineCycleNext<CR>", default_opts)
map("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", default_opts)

-- [[ Nvim-Tree ]]
map("n", "<leader>e", ":NvimTreeToggle<CR>", default_opts)
map("n", "<leader>sf", ":NvimTreeFindFile<CR>", default_opts)

-- [[ Formatting ]]
map("n", "<leader>f", ":Format<CR>", default_opts)

-- [[ Telescope ]]
map("n", "<C-p>", ":Telescope find_files<CR>", {})
map("n", "<leader>fg", ":Telescope live_grep<CR>", {})
map("n", "<leader>fs", ":Telescope grep_string<CR>", {})
map("n", "<leader>fc", ":Telescope current_buffer_fuzzy_find<CR>", {})
map("n", "<leader><leader>", ":Telescope frecency<CR>", {})

-- [[ Telescope: Git ]]
map("n", "<leader>gt", ":Telescope git_status<CR>", {})
map("n", "<leader>gb", ":Telescope git_branches<CR>", {})
map("n", "<leader>gc", ":Telescope git_commits<CR>", {})

maps.n["<leader>sr"] = {
  function()
    require("telescope.builtin").registers()
  end,
  desc = "Search registers",
}
maps.n["<leader>sk"] = {
  function()
    require("telescope.builtin").keymaps()
  end,
  desc = "Search keymaps",
}
maps.n["<leader>sc"] = {
  function()
    require("telescope.builtin").commands()
  end,
  desc = "Search commands",
}

utils.set_mappings(maps, {})

-- [[ Spectre ]]
map("n", "<leader>S", "<cmd>lua require('spectre').open()<CR>", {})

-- [[ Illuminate ]]
map("n", "<leader>n", '<cmd>lua require"illuminate".next_reference{wrap=true}<cr>', { noremap = true })
map("n", "<leader>p", '<cmd>lua require"illuminate".next_reference{reverse=true,wrap=true}<cr>', { noremap = true })

-- [[ Search ]]
map("n", "<leader>l", ":noh<CR>", default_opts)

map("n", "<C-w><", ":vertical resize -30<CR>", default_opts)
map("n", "<C-w>>", ":vertical resize +30<CR>", default_opts)
keymap.set("n", "<C-w><up>", "10<C-w>+")
keymap.set("n", "<C-w><down>", "10<C-w>-")

-- Resize window
--[[ keymap.set('n', '<C-w><left>', '<C-w>< :vertical resize +10') ]]
--[[ keymap.set('n', '<C-w><right>', '<C-w>> :vertical resize -10') ]]
--[[ keymap.set('n', '<C-w><up>', '<C-w>+') ]]
--[[ keymap.set('n', '<C-w><down>', '<C-w>-') ]]
