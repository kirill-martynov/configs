-- [[ keys ]]
local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

-- [[ Bufferline ]]
map('n', '<Tab>', ':BufferLineCycleNext<CR>', default_opts)
map('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', default_opts)

-- [[ Nvim-Tree ]]
map('n', '<C-n>', ':NvimTreeToggle<CR>', default_opts)

-- [[ Formatting ]]
map('n', '<leader>f', ':Format<CR>', default_opts) 

-- [[ Telescope ]]
map('n', '<C-p>', ':Telescope find_files<CR>', {})
map('n', '<leader>fg', ':Telescope live_grep<CR>', {})
map('n', '<leader>fs', ':Telescope grep_string<CR>', {})
map('n', '<leader>fc', ':Telescope current_buffer_fuzzy_find<CR>', {})
map('n', '<leader>gs', ':Telescope git_status<CR>', {})