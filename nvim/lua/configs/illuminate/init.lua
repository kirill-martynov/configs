vim.g.Illuminate_delay = 500
vim.g.Illuminate_ftblacklist = { 'NvimTree' }

vim.cmd[[
  augroup illuminate_augroup
    autocmd!
    autocmd VimEnter * hi illuminatedWord cterm=underline gui=underline
  augroup END
]]
