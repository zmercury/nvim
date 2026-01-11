local M = {}

M.lualine = {
	normal = {
		a = { bg = "#fcbf49", fg = "#000000" }, -- Mode (Yellow/Orange)
		b = { bg = "#2e2a1e", fg = "#ffffff" }, -- Dark muted yellow/brown
		c = { bg = "#2e2a1e", fg = "#ffffff" },
		x = { bg = "#2e2a1e", fg = "#ffffff" },
		y = { bg = "#2e2a1e", fg = "#ffffff" },
		z = { bg = "#fcbf49", fg = "#000000" }, -- Clock
	},
	insert = {
		a = { bg = "#ef476f", fg = "#ffffff" }, -- Red (Keep same)
		b = { bg = "#2e2a1e", fg = "#ffffff" },
		c = { bg = "#2e2a1e", fg = "#ffffff" },
		x = { bg = "#2e2a1e", fg = "#ffffff" },
		y = { bg = "#2e2a1e", fg = "#ffffff" },
		z = { bg = "#ef476f", fg = "#ffffff" },
	},
	visual = {
		a = { bg = "#f77f00", fg = "#ffffff" }, -- Orange for contrast against yellow
		b = { bg = "#2e2a1e", fg = "#ffffff" },
		c = { bg = "#2e2a1e", fg = "#ffffff" },
		x = { bg = "#2e2a1e", fg = "#ffffff" },
		y = { bg = "#2e2a1e", fg = "#ffffff" },
		z = { bg = "#f77f00", fg = "#ffffff" },
	},
	replace = {
		a = { bg = "#118ab2", fg = "#ffffff" }, -- Blue
		b = { bg = "#2e2a1e", fg = "#ffffff" },
		c = { bg = "#2e2a1e", fg = "#ffffff" },
		x = { bg = "#2e2a1e", fg = "#ffffff" },
		y = { bg = "#2e2a1e", fg = "#ffffff" },
		z = { bg = "#118ab2", fg = "#ffffff" },
	},
	command = {
		a = { bg = "#fcbf49", fg = "#000000" }, -- Yellow
		b = { bg = "#2e2a1e", fg = "#ffffff" },
		c = { bg = "#2e2a1e", fg = "#ffffff" },
		x = { bg = "#2e2a1e", fg = "#ffffff" },
		y = { bg = "#2e2a1e", fg = "#ffffff" },
		z = { bg = "#fcbf49", fg = "#000000" },
	},
	inactive = {
		a = { bg = "#403a2c", fg = "#ffffff" }, -- Inactive brown
		b = { bg = "#403a2c", fg = "#ffffff" },
		c = { bg = "#403a2c", fg = "#ffffff" },
		x = { bg = "#403a2c", fg = "#ffffff" },
		y = { bg = "#403a2c", fg = "#ffffff" },
		z = { bg = "#403a2c", fg = "#ffffff" },
	},
}

function M.setup()
	-- Set the highlight for selected text (Visual mode)
	-- Using a yellow/brown tint for yellow theme
	vim.api.nvim_set_hl(0, "Visual", { bg = "#5f5223", fg = "NONE" })
end

return M
