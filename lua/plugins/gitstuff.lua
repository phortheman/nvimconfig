return {
	{
		"tpope/vim-fugitive",
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
			vim.keymap.set(
				"n",
				"<leader>gp",
				":Gitsigns preview_hunk<CR>",
				{ silent = true, desc = " [G]it [P]review Hunk" }
			)
			vim.keymap.set(
				"n",
				"<leader>gt",
				":Gitsigns toggle_current_line_blame<CR>",
				{ silent = true, desc = "[G]it [T]oggle line blame" }
			)
		end,
	},
	{
		"kdheepak/lazygit.nvim",
		dependencies = {
			"nvim-telescope/telescope.nvim",
			"nvim-lua/plenary.nvim",
		},
		cmd = {
			"LazyGit",
			"LazyGitConfig",
			"LazyGitCurrentFile",
			"LazyGitFilter",
			"LazyGitFilterCurrentFile",
		},
		config = function()
			require("telescope").load_extension("lazygit")
		end,
	},
}
