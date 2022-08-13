vim.api.nvim_set_hl(0, 'WinBarPath', { bg = '#283141', fg = '#566075', bold = true })
vim.api.nvim_set_hl(0, 'WinBarModified', { bg = '#283141', fg = '#566075', bold = true })

vim.o.winbar = '%#WinBarModified#%m %#WinBarPath# %t '
