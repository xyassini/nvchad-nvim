return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },
  -- {
  --   "saghen/blink.cmp",
  --   opts = require "configs.blink",
  -- },
  --

  {
    "hrsh7th/nvim-cmp",
    opts = require "configs.cmp",
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    event = "User FilePost",
    opts = require "configs.ibl",
  },

  {
    "kdheepak/lazygit.nvim",
    lazy = true,
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = {
      { "<leader>g", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    },
  },

  {
    "pocco81/auto-save.nvim",
    lazy = true,
    event = "InsertLeave",
    opts = require "configs.auto-save",
  },

  {
    "miversen33/sunglasses.nvim",
    lazy = true,
    event = "UIEnter",
    opts = require "configs.sunglasses",
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = require "configs.treesitter",
  },

  {
    "andrewferrier/debugprint.nvim",
    version = "7.*",
    keys = require "configs.debugprint.keys",
    opts = require "configs.debugprint.options",
  },

  {
    "kylechui/nvim-surround",
    version = "*",
    keys = {
      "cs",
    },
    config = true,
  },

  {
    "windwp/nvim-ts-autotag",
    opts = require "configs.autotag",
    event = "InsertEnter",
    ft = { "html", "angularhtml", "svelte", "astro", "jsx", "tsx", "typescriptreact", "javascriptreact" },
  },

  {
    "Wansmer/treesj",
    keys = {
      {
        ",",
        function()
          require("treesj").toggle()
        end,
      },
    },
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    opts = {
      use_default_keymaps = false,
    },
  },

  {
    "MagicDuck/grug-far.nvim",
    opts = {},
  },

  {
    "aznhe21/actions-preview.nvim",
    keys = {
      {

        "<C-Enter>",
        function()
          require("actions-preview").code_actions()
        end,
      },
    },
  },
}
