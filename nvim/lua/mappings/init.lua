-- [[ keys ]]
local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local keymap = vim.keymap

-- [[ Bufferline ]]
map('n', '<Tab>', ':BufferLineCycleNext<CR>', default_opts)
map('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', default_opts)

-- [[ Nvim-Tree ]]
map('n', '<leader>e', ':NvimTreeToggle<CR>', default_opts)
map('n', '<leader>sf', ':NvimTreeFindFile<CR>', default_opts)

-- [[ Formatting ]]
map('n', '<leader>f', ':Format<CR>', default_opts) 

-- [[ Telescope ]]
map('n', '<C-p>', ':Telescope find_files<CR>', {})
map('n', '<leader>fg', ':Telescope live_grep<CR>', {})
map('n', '<leader>fs', ':Telescope grep_string<CR>', {})
map('n', '<leader>fc', ':Telescope current_buffer_fuzzy_find<CR>', {})
map('n', '<leader>gs', ':Telescope git_status<CR>', {})
map('n', '<leader><leader>', ':Telescope frecency<CR>', {})

-- [[ Illuminate ]]
map('n', '<leader>n', '<cmd>lua require"illuminate".next_reference{wrap=true}<cr>', { noremap=true })
map('n', '<leader>p', '<cmd>lua require"illuminate".next_reference{reverse=true,wrap=true}<cr>', { noremap=true })

-- [[ Search ]]
map('n', '<leader>l', ':noh<CR>', default_opts)

map('n', '<C-w><', ':vertical resize -20<CR>', default_opts)
map('n', '<C-w>>', ':vertical resize +20<CR>' ,default_opts)

-- Resize window
--[[ keymap.set('n', '<C-w><left>', '<C-w>< :vertical resize +10') ]]
--[[ keymap.set('n', '<C-w><right>', '<C-w>> :vertical resize -10') ]]
--[[ keymap.set('n', '<C-w><up>', '<C-w>+') ]]
--[[ keymap.set('n', '<C-w><down>', '<C-w>-') ]]
