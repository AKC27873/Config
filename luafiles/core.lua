return {

  ------------------------------------------------------------------
  -- Colorscheme (LOAD FIRST)
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "night", -- night | storm | moon | day
      transparent = true,
      terminal_colors = true,
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = { italic = true },
        variables = {},
      },
      dim_inactive = true,
      lualine_bold = true,
    },
    config = function(_, opts)
      require("tokyonight").setup(opts)
      vim.cmd.colorscheme("tokyonight")
    end,
  },
  -- UI / Appearance
  ------------------------------------------------------------------

  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {},
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    event = "BufReadPre",
    main = "ibl",
    opts = {
      indent = {
        char = "│",
      },
      scope = {
        enabled = true,
        show_start = false,
        show_end = false,
      },
    },
  },
  {
    ------------------------------------------------------------------
    -- Snacks.nvim (UI / Picker / Notifier)
    ------------------------------------------------------------------
    {
      "folke/snacks.nvim",
      priority = 1000,
      lazy = false,
      opts = {
        bigfile = { enabled = true },
        notifier = { enabled = true },
        quickfile = { enabled = true },
        statuscolumn = { enabled = true },

        picker = {
          enabled = true,
          layout = {
            preset = "default", -- ivy | dropdown | default
          },
        },

        input = { enabled = true },
        indent = { enabled = true },
        words = { enabled = true },
      },
      config = function(_, opts)
        require("snacks").setup(opts)

        local map = vim.keymap.set

        -- Notifications
        map("n", "<leader>nn", function()
          Snacks.notifier.show_history()
        end, { desc = "Notification History" })
      end,
    },
  },

  {
    "rcarriga/nvim-notify",
    event = "VeryLazy",
    opts = {
      timeout = 3000,
    },
  },

  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {},
  },

  {
    "j-hui/fidget.nvim",
    event = "LspAttach",
    opts = {},
  },

  ------------------------------------------------------------------
  -- File Explorer & Navigation
  ------------------------------------------------------------------

  {
    "nvim-tree/nvim-tree.lua",
    cmd = "NvimTreeToggle",
    opts = {},
  },

  {
    "phaazon/hop.nvim",
    keys = { "s", "S" },
    opts = {},
  },

  ------------------------------------------------------------------
  -- Editing / QoL
  ------------------------------------------------------------------

  {
    "numToStr/Comment.nvim",
    keys = { "gc", "gb" },
    opts = {},
  },

  {
    "kylechui/nvim-surround",
    keys = { "ys", "ds", "cs" },
    opts = {},
  },

  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {},
  },

  {
    "chrisgrieser/nvim-various-textobjs",
    event = "BufReadPost",
  },

  ------------------------------------------------------------------
  -- Git
  ------------------------------------------------------------------

  {
    "lewis6991/gitsigns.nvim",
    event = "BufReadPre",
    opts = {},
  },

  ------------------------------------------------------------------
  -- LSP / Completion
  ------------------------------------------------------------------

  {
    "neovim/nvim-lspconfig",
    event = "BufReadPre",
  },

  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "saadparwaiz1/cmp_luasnip",
      "L3MON4D3/LuaSnip",
    },
    opts = {},
  },

  {
    "L3MON4D3/LuaSnip",
    event = "InsertEnter",
    opts = {},
  },

  ------------------------------------------------------------------
  -- Treesitter
  ------------------------------------------------------------------

  {
    "nvim-treesitter/nvim-treesitter",
    event = "BufReadPost",
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
        "lua",
        "python",
        "javascript",
        "markdown",
        "bash",
        "json",
        "go",
        "rust",
      },
      highlight = { enable = true },
      indent = { enable = true },
    },
  },

  {
    "nvim-treesitter/playground",
    cmd = "TSPlaygroundToggle",
  },

  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      open_mapping = [[<leader>tt]], -- optional, but we'll also bind manually
      direction = "float", -- "horizontal" | "vertical" | "tab" | "float"
      shade_terminals = true,
    },
    config = function(_, opts)
      require("toggleterm").setup(opts)

      -- <leader>tt to toggle terminal
      vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<CR>", { desc = "Toggle Terminal" })
    end,
  },
  {
    "yousefhadder/markdown-plus.nvim",
    ft = "markdown",
    opts = {},
  },
  ------------------------------------------------------------------
  -- Debugging
  ------------------------------------------------------------------

  {
    "mfussenegger/nvim-dap",
    cmd = {
      "DapContinue",
      "DapToggleBreakpoint",
      "DapStepOver",
      "DapStepInto",
    },
  },
}
