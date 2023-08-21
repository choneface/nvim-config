require'nvim-treesitter.configs'.setup {
	ensure_installed = { "c", "lua", "java", "python", "vim", "vimdoc", "query" },

	sync_install = false,

	auto_install = true,

	highlight = {
		enable = true,
	},
}
