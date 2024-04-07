return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			filesystem = {
				filtered_items = {
					visible = true,
					--hide_dotfiles = false,
					--hide_gitignore = false,
					--hide_hidden = false,
				},
			},
		})
		vim.keymap.set("n", "<C-b>", ":Neotree focus<CR>", { silent = true, desc = "Sidebar toggle" })
	end,
}