vim.cmd([[
call plug#begin()

Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/nvim-cmp'

Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

Plug 'ellisonleao/gruvbox.nvim'

call plug#end()
]])

vim.api.nvim_set_keymap('n', '<F7>', ':tabp<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<F8>', ':tabn<CR>', { noremap = true })

require("mason").setup()
require("mason-lspconfig").setup()

local cmp = require'cmp'

cmp.setup({
    snippet = {     -- REQUIRED - you must specify a snippet engine
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'vsnip' }, -- For vsnip users.
    }, {
        { name = 'buffer' },
    })
})
local capabilities = require('cmp_nvim_lsp').default_capabilities()
require('lspconfig')['emmet_language_server'].setup {
    capabilities = capabilities
}

require("gruvbox").setup({
    undercurl = false,
    underline = false,
    bold = false,
    italic = {
        strings = false,
        emphasis = false,
        comments = false,
        operators = false,
        folds = false,
    },
    contrast = "soft",
})

vim.cmd([[
set background=dark
colorscheme gruvbox

set tabstop=4
set shiftwidth=4

set relativenumber
set cursorline

set mouse=
]])

-- :PlugInstall
-- :PlugUpdate
-- :PlugClean
--
-- :Mason
