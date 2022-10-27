--init.vim
--[[
   [set runtimepath^=~/.vim runtimepath+=~/.vim/after
   [let &packpath=&runtimepath
   [source ~/.vimrc
   ]]

require('packer_init')
require('core/options')
require('core/autocmds')
require('core/keymaps')
require('plugins/nvim-tree')
require('plugins/indent-blankline')
require('plugins/nvim-cmp')
require('plugins/nvim-lspconfig')
require('plugins/nvim-treesitter')
require('plugins/alpha-nvim')
require('plugins/nvim-colorizer')
require('plugins/bufferline')
require('plugins/null-ls')
require('plugins/prettier')
require('plugins/nvim-tabnine')
require('plugins/telescope')
require('plugins/catppuccin-theme')
require('plugins/lualine')
