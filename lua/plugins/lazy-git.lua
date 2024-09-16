-- Lazy git
return {
	"kdheepak/lazygit.nvim",
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
	keys = {
		{ "<leader>lg", "<cmd>LazyGit<cr>", desc = "[L]azy [G]it" },
		{ "<leader>lcf", "<cmd>LazyGitCurrentFile<cr>", desc = "[L]azy [G]it [C]urrent [F]ile" },
	},
}
