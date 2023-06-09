local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  use 'nvim-lualine/lualine.nvim' -- Statusline
  use 'nvim-lua/plenary.nvim'     -- Common utilities
  --  use 'windwp/nvim-autopairs'     -- Autopair brackets, quotes…

  use {
    'folke/which-key.nvim', -- Display key options
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }

  use 'kyazdani42/nvim-web-devicons' -- File icons
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' }
  }
  use 'nvim-telescope/telescope-file-browser.nvim'

  use 'neovim/nvim-lspconfig'           -- Configurations for Nvim LSP
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'MunifTanjim/prettier.nvim'
  use 'folke/trouble.nvim'              -- A pretty list for showing diagnostics
  use 'L3MON4D3/LuaSnip'                -- Snippets
  use 'aca/emmet-ls'                    -- Emmet

  use 'dinhhuy258/git.nvim'             -- use Git commands in nvim
  use 'lewis6991/gitsigns.nvim'         -- show git changes

  use 'onsails/lspkind-nvim'            -- vscode-like pictograms
  use 'hrsh7th/cmp-buffer'              -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp'            -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp'                -- Completion
  use 'glepnir/lspsaga.nvim'            -- LSP UIs
  use 'williamboman/mason.nvim'         -- install linters, formatters
  use 'williamboman/mason-lspconfig.nvim'

  -- use 'numToStr/Comment.nvim'       -- comment lines or blocks
  use 'norcalli/nvim-colorizer.lua' -- display hex values as colors

  use 'folke/todo-comments.nvim'    -- colorize annotations

  use 'folke/zen-mode.nvim'         -- Zen mode
  use 'folke/twilight.nvim'         -- dims inactive portions of the code you're editingevolved

  use {
    'sudormrfbin/cheatsheet.nvim',

    requires = {
      { 'nvim-telescope/telescope.nvim' },
      { 'nvim-lua/popup.nvim' },
      { 'nvim-lua/plenary.nvim' },
    }
  }

  use 'echasnovski/mini.nvim' -- plugin collection
end)
