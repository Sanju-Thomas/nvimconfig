return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        "clangd",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
      },
    },
  },

  -- additional added by sanju

  -- code reading aid
  {
    "nvim-treesitter/nvim-treesitter-context",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    ft = { "c", "cpp", "lua", "rust", "go" },
    config = function()
      require("treesitter-context").setup()
    end,
  },
  -- visual aid
  -- { 'echasnovski/mini.animate',
  --   lazy = false,
  --   enable = false,
  --   version = '*',
  --  config = function()
  --    require('mini.animate').setup()
  --  end
  --  },
  -- outline of current document
  { "shortcuts/no-neck-pain.nvim", lazy = false },
  {
  "hedyhli/outline.nvim",
  config = function()
    -- Example mapping to toggle outline
    vim.keymap.set("n", "<leader>o", "<cmd>Outline<CR>",
      { desc = "Toggle Outline" })

    require("outline").setup {
      -- Your setup opts here (leave empty to use defaults)
    }
  end,
  ft = { "c", "cpp", "lua", "rust", "go" },
},
}
