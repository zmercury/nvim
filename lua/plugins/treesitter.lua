return {
	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			-- Disable auto-install completely
			opts.auto_install = false
			
			-- Clear any ensure_installed from LazyVim or language extras
			opts.ensure_installed = {}
			
			-- Keep syntax highlighting enabled for already installed parsers
			opts.highlight = opts.highlight or {}
			opts.highlight.enable = true
			
			opts.indent = opts.indent or {}
			opts.indent.enable = true
			
			return opts
		end,
	},
}
