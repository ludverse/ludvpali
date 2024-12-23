return {
	{
		"Shatur/neovim-session-manager",
		lazy = false,

		keys = {
			{
				"<Leader>ss",
				function() require("session_manager").load_session() end,
				desc = "Load session"
			},
			{
				"<Leader>sw",
				function() require("session_manager").save_current_session() end,
				desc = "Save current session"
			}
		},

		config = function()
			local config = require("session_manager.config")

			require("session_manager").setup({
				autoload_mode = { config.AutoloadMode.CurrentDir, config.AutoloadMode.LastSession },
				autosave_ignore_dirs = {
					"/home/ludv"
				},
			})
		end
	},
}
