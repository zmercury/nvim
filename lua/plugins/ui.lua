return {
	-- messages, cmdline and the popupmenu
	{
		"folke/noice.nvim",
		opts = function(_, opts)
			table.insert(opts.routes, {
				filter = {
					event = "notify",
					find = "No information available",
				},
				opts = { skip = true },
			})
			local focused = true
			vim.api.nvim_create_autocmd("FocusGained", {
				callback = function()
					focused = true
				end,
			})
			vim.api.nvim_create_autocmd("FocusLost", {
				callback = function()
					focused = false
				end,
			})
			table.insert(opts.routes, 1, {
				filter = {
					cond = function()
						return not focused
					end,
				},
				view = "notify_send",
				opts = { stop = false },
			})

			opts.commands = {
				all = {
					-- options for the message history that you get with `:Noice`
					view = "split",
					opts = { enter = true, format = "details" },
					filter = {},
				},
			}

			vim.api.nvim_create_autocmd("FileType", {
				pattern = "markdown",
				callback = function(event)
					vim.schedule(function()
						require("noice.text.markdown").keys(event.buf)
					end)
				end,
			})

			opts.cmdline = {
				enabled = true, -- Keep cmdline enabled
				view = "cmdline", -- Use the classic cmdline at the bottom
			}

			opts.presets.lsp_doc_border = true
		end,
	},

	{
		"rcarriga/nvim-notify",
		opts = {
			timeout = 5000,
		},
	},

	{
		"snacks.nvim",
		opts = {
			scroll = { enabled = false },
		},
		keys = {},
	},

	-- buffer line
	{
		"akinsho/bufferline.nvim",
		event = "VeryLazy",
		keys = {
			{ "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next tab" },
			{ "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev tab" },
		},
		opts = {
			options = {
				mode = "tabs",
				-- separator_style = "slant",
				show_buffer_close_icons = false,
				show_close_icon = false,
			},
		},
	},

	-- filename
	{
		"b0o/incline.nvim",
		dependencies = { "craftzdog/solarized-osaka.nvim" },
		event = "BufReadPre",
		priority = 1200,
		config = function()
			local colors = require("solarized-osaka.colors").setup()
			require("incline").setup({
				highlight = {
					groups = {
						InclineNormal = { guibg = colors.magenta500, guifg = colors.base04 },
						InclineNormalNC = { guifg = colors.violet500, guibg = colors.base03 },
					},
				},
				window = { margin = { vertical = 0, horizontal = 1 } },
				hide = {
					cursorline = true,
				},
				render = function(props)
					local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
					if vim.bo[props.buf].modified then
						filename = "[+] " .. filename
					end

					local icon, color = require("nvim-web-devicons").get_icon_color(filename)
					return { { icon, guifg = color }, { " " }, { filename } }
				end,
			})
		end,
	},

	-- statusline
	{
		"nvim-lualine/lualine.nvim",
		opts = function(_, opts)
			local LazyVim = require("lazyvim.util")

			-- Function to get time in 12-hour format with a clock icon
			local function get_time()
				return " " .. os.date("%I:%M %p")
			end

			-- Ensure opts.sections exists and update lualine_c
			opts.sections = opts.sections or {}
			opts.sections.lualine_c = opts.sections.lualine_c or {}
			opts.sections.lualine_c[4] = {
				LazyVim.lualine.pretty_path({
					length = 0,
					relative = "cwd",
					modified_hl = "MatchParen",
					directory_hl = "",
					filename_hl = "Bold",
					modified_sign = "",
					readonly_icon = " 󰌾 ",
				}),
			}

			-- Set clock in lualine_z
			opts.sections.lualine_z = { get_time }

			-- Define the custom theme with all required sections
			opts.options = opts.options or {}
			opts.options.theme = {
				normal = {
					a = { bg = "#06d6a0", fg = "#ffffff" }, -- Mode (unchanged)
					b = { bg = "#1e2f27", fg = "#ffffff" }, -- Dark muted green
					c = { bg = "#1e2f27", fg = "#ffffff" },
					x = { bg = "#1e2f27", fg = "#ffffff" },
					y = { bg = "#1e2f27", fg = "#ffffff" },
					z = { bg = "#06d6a0", fg = "#ffffff" }, -- Clock (unchanged)
				},
				insert = {
					a = { bg = "#ef476f", fg = "#ffffff" }, -- Unchanged
					b = { bg = "#1e2f27", fg = "#ffffff" },
					c = { bg = "#1e2f27", fg = "#ffffff" },
					x = { bg = "#1e2f27", fg = "#ffffff" },
					y = { bg = "#1e2f27", fg = "#ffffff" },
					z = { bg = "#ef476f", fg = "#ffffff" }, -- Unchanged
				},
				visual = {
					a = { bg = "#ffd166", fg = "#000000" }, -- Unchanged
					b = { bg = "#1e2f27", fg = "#ffffff" },
					c = { bg = "#1e2f27", fg = "#ffffff" },
					x = { bg = "#1e2f27", fg = "#ffffff" },
					y = { bg = "#1e2f27", fg = "#ffffff" },
					z = { bg = "#ffd166", fg = "#000000" }, -- Unchanged
				},
				replace = {
					a = { bg = "#118ab2", fg = "#ffffff" }, -- Unchanged
					b = { bg = "#1e2f27", fg = "#ffffff" },
					c = { bg = "#1e2f27", fg = "#ffffff" },
					x = { bg = "#1e2f27", fg = "#ffffff" },
					y = { bg = "#1e2f27", fg = "#ffffff" },
					z = { bg = "#118ab2", fg = "#ffffff" }, -- Unchanged
				},
				command = {
					a = { bg = "#06d6a0", fg = "#ffffff" }, -- Unchanged
					b = { bg = "#1e2f27", fg = "#ffffff" },
					c = { bg = "#1e2f27", fg = "#ffffff" },
					x = { bg = "#1e2f27", fg = "#ffffff" },
					y = { bg = "#1e2f27", fg = "#ffffff" },
					z = { bg = "#06d6a0", fg = "#ffffff" }, -- Unchanged
				},
				inactive = {
					a = { bg = "#2c4038", fg = "#ffffff" }, -- Slightly lighter dark shade
					b = { bg = "#2c4038", fg = "#ffffff" },
					c = { bg = "#2c4038", fg = "#ffffff" },
					x = { bg = "#2c4038", fg = "#ffffff" },
					y = { bg = "#2c4038", fg = "#ffffff" },
					z = { bg = "#2c4038", fg = "#ffffff" },
				},
			}

			return opts
		end,
	},

	{
		"folke/zen-mode.nvim",
		cmd = "ZenMode",
		opts = {
			plugins = {
				gitsigns = true,
				tmux = true,
				kitty = { enabled = false, font = "+2" },
			},
		},
		keys = { { "<leader>z", "<cmd>ZenMode<cr>", desc = "Zen Mode" } },
	},

	{
		"MeanderingProgrammer/render-markdown.nvim",
		enabled = false,
	},

	{
		"folke/snacks.nvim",
		opts = {
			explorer = { enabled = false },
			dashboard = {},
		},
	},
}
