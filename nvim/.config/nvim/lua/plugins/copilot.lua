local options = {
	panel = {
		enabled = true,
		auto_refresh = true,
		keymap = {
			jump_prev = "[[",
			jump_next = "]]",
			accept = "<CR>",
			refresh = "gr",
			open = "<M-CR>"
		},
		layout = {
			position = "right", -- | top | left | right | bottom |
			ratio = 0.2
		},
	},
	suggestion = {
		enabled = false,
		auto_trigger = true,
		hide_during_completion = true,
		debounce = 15,
		trigger_on_accept = true,
		keymap = {
			accept = "<M-l>",
			accept_word = false,
			accept_line = false,
			next = "<M-]>",
			prev = "<M-[>",
			dismiss = "<C-]>",
			toggle_auto_trigger = false,
		},
	},
}

require("copilot").setup(options)
