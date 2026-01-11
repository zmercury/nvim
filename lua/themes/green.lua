local M = {}

M.lualine = {
	normal = {
		a = { bg = "#06d6a0", fg = "#ffffff" }, -- Mode (Green)
		b = { bg = "#1e2f27", fg = "#ffffff" }, -- Dark muted green
		c = { bg = "#1e2f27", fg = "#ffffff" },
		x = { bg = "#1e2f27", fg = "#ffffff" },
		y = { bg = "#1e2f27", fg = "#ffffff" },
		z = { bg = "#06d6a0", fg = "#ffffff" }, -- Clock (Green)
	},
	insert = {
		a = { bg = "#ef476f", fg = "#ffffff" }, -- Red
		b = { bg = "#1e2f27", fg = "#ffffff" },
		c = { bg = "#1e2f27", fg = "#ffffff" },
		x = { bg = "#1e2f27", fg = "#ffffff" },
		y = { bg = "#1e2f27", fg = "#ffffff" },
		z = { bg = "#ef476f", fg = "#ffffff" },
	},
	visual = {
		a = { bg = "#ffd166", fg = "#000000" }, -- Yellow
		b = { bg = "#1e2f27", fg = "#ffffff" },
		c = { bg = "#1e2f27", fg = "#ffffff" },
		x = { bg = "#1e2f27", fg = "#ffffff" },
		y = { bg = "#1e2f27", fg = "#ffffff" },
		z = { bg = "#ffd166", fg = "#000000" },
	},
	replace = {
		a = { bg = "#118ab2", fg = "#ffffff" }, -- Blue
		b = { bg = "#1e2f27", fg = "#ffffff" },
		c = { bg = "#1e2f27", fg = "#ffffff" },
		x = { bg = "#1e2f27", fg = "#ffffff" },
		y = { bg = "#1e2f27", fg = "#ffffff" },
		z = { bg = "#118ab2", fg = "#ffffff" },
	},
	command = {
		a = { bg = "#06d6a0", fg = "#ffffff" }, -- Green
		b = { bg = "#1e2f27", fg = "#ffffff" },
		c = { bg = "#1e2f27", fg = "#ffffff" },
		x = { bg = "#1e2f27", fg = "#ffffff" },
		y = { bg = "#1e2f27", fg = "#ffffff" },
		z = { bg = "#06d6a0", fg = "#ffffff" },
	},
	inactive = {
		a = { bg = "#2c4038", fg = "#ffffff" },
		b = { bg = "#2c4038", fg = "#ffffff" },
		c = { bg = "#2c4038", fg = "#ffffff" },
		x = { bg = "#2c4038", fg = "#ffffff" },
		y = { bg = "#2c4038", fg = "#ffffff" },
		z = { bg = "#2c4038", fg = "#ffffff" },
	},
}

function M.setup()
	-- Set the highlight for selected text (Visual mode)
	-- Using a green tint for consistent green theme
	vim.api.nvim_set_hl(0, "Visual", { bg = "#2e4f3f", fg = "NONE" })
end

return M
