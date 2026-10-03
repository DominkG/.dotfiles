-- https://github.com/nvim-lualine/lualine.nvim
--
-- Only activates lualine without special config
-- require('lualine').setup()

require('lualine').setup {
	options = {
	  section_separators = { left = '', right = '' },
	  component_separators = { left = '', right = '' }
	}
}
