vim.cmd.packadd("packer.nvim")

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.0",
    requires = { { "nvim-lua/plenary.nvim" } },
  }
  use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },             -- Required
      { 'williamboman/mason.nvim' },           -- Optional
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },         -- Required
      { 'hrsh7th/cmp-nvim-lsp' },     -- Required
      { 'hrsh7th/cmp-buffer' },       -- Optional
      { 'hrsh7th/cmp-path' },         -- Optional
      { 'saadparwaiz1/cmp_luasnip' }, -- Optional
      { 'hrsh7th/cmp-nvim-lua' },     -- Optional

      -- Snippets
      { 'L3MON4D3/LuaSnip' },             -- Required
      { 'rafamadriz/friendly-snippets' }, -- Optional
    }
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use { 'onsails/lspkind-nvim' }
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'kyazdani42/nvim-web-devicons' -- File icons

  -- Agregar el paquete telescope-fzy-native.nvim
  use 'nvim-telescope/telescope-fzy-native.nvim'

  -- using packer.nvim
  use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }

  use 'prettier/vim-prettier'
  use "lukas-reineke/indent-blankline.nvim"
  use { 'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons' }

  -- ALE
  use { 'dense-analysis/ale' }

  -- coc
--  use {
  --  'neoclide/coc.nvim',
    --branch = 'release',
 -- }
 -- -- En tu archivo de configuración de Packer
	use 'ayu-theme/ayu-vim'
	use 'voldikss/vim-floaterm'

end)

