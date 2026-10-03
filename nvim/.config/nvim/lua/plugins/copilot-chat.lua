local options = {
	model = 'gpt-4.1',           -- AI model to use
	temperature = 0.1,           -- Lower = focused, higher = creative
	trusted_tools = nil,         -- Require approval for all tool calls
	auto_insert_mode = true,     -- Enter insert mode when opening
	window = {
		-- layout = 'float',
		width = 80, -- Fixed width in columns
		height = 20, -- Fixed height in rows
		border = 'rounded', -- 'single', 'double', 'rounded', 'solid'
		title = '🤖 AI Assistant',
		zindex = 100, -- Ensure window stays on top

	},
}
require("CopilotChat").setup(options)
