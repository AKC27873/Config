return {

	------------------------------------------------------------------
	-- Colorscheme (LOAD FIRST)
	-- UI / Appearance
	------------------------------------------------------------------
	{
		"olimorris/onedarkpro.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("onedarkpro").setup({
				theme = "onedark_dark", -- onedark, onelight, onedark_vivid, onedark_dark, vaporwave

				styles = {
					comments = "italic",
					keywords = "italic",
					functions = "italic",
				},
			})

			vim.cmd("colorscheme onedark_dark")
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },

		opts = {
			options = {
				globalstatus = true,
			},

			sections = {
				lualine_a = {
					{
						function()
							return ""
						end,
					}, -- penguin
					"mode",
				},

				lualine_b = { "branch" },

				lualine_c = {
					{
						"filename",
						path = 1, -- 0 = filename only, 1 = relative path, 2 = absolute path
					},
				},

				lualine_x = { "encoding", "filetype" },
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
		},
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
		dependencies = {
			{
				"garymjr/nvim-snippets",
				opts = {
					friendly_snippets = true,
				},
				dependencies = { "rafamadriz/friendly-snippets" },
			},
		},
		opts = function(_, opts)
			opts.snippet = {
				expand = function(item)
					return LazyVim.cmp.expand(item.body)
				end,
			}
			if LazyVim.has("nvim-snippets") then
				table.insert(opts.sources, { name = "snippets" })
			end
		end,
	},

	{
		"L3MON4D3/LuaSnip",
		-- follow latest release.
		version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
		-- install jsregexp (optional!).
		build = "make install_jsregexp",
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
		"MeanderingProgrammer/render-markdown.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-mini/mini.nvim" }, -- if you use the mini.nvim suite
		-- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.icons' },        -- if you use standalone mini plugins
		-- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
		---@module 'render-markdown'
		---@type render.md.UserConfig
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
