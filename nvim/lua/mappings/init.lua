local key_mapper = function(mode, key, result)
  vim.api.nvim_set_keymap(
    mode,
    key,
    result,
    { noremap = true, silent = true}
  )
end

-- nvim-tree
key_mapper('', '<C-n>', ':NvimTreeToggle<CR>')

-- glow markdown
key_mapper('', '<leader>g', ':Glow<CR>')
