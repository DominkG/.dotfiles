-- https://microsoft.github.io/language-server-protocol/implementors/servers/
-- https://neovim.io/doc/user/lsp.html#lsp-new-config
-- Install the lsp with your package manager e.g. sudo pacman -S gopls

-- My Language Server Config for Lua
vim.lsp.config['my_lsp_lua_ls'] = {
	cmd = { 'lua-language-server' },
	-- Filetypes to automatically attach to.
	filetypes = { 'lua' },
	-- Sets the "workspace" to the directory where any of these files is found.
	-- Files that share a root directory will reuse the LSP server connection.
	-- Nested lists indicate equal priority, see |vim.lsp.Config|.
	root_markers = { { '.luarc.json', '.luarc.jsonc' }, '.git' },
	-- Specific settings to send to the server. The schema is server-defined.
	-- Example: https://raw.githubusercontent.com/LuaLS/vscode-lua/master/setting/schema.json
	settings = {
		Lua = {
			runtime = {
				version = 'LuaJIT',
			},
			diagnostics = {
				globals = { "vim" }
			}
		}
	}
}
vim.lsp.enable('my_lsp_lua_ls')

-- My Language Server Config for Python ty
vim.lsp.config['my_lsp_python_ty_ls'] = {
	cmd = { 'ty', 'server' },
	filetypes = { 'python' },
	root_markers = { '.git' },
	settings = {
		ty = {
			inlayHints = {
				callArgumentNames = true,
				variableTypes = true,
			},
			experimental = {
				rename = true,
			},
		},
	},
}
vim.lsp.enable('my_lsp_python_ty_ls')

-- My Languag Server Config for Python Linter Ruff
vim.lsp.config['my_lsp_python_ruff_ls'] = {
	cmd = { 'ruff', 'server' },
	filetypes = { 'python' },
	init_options = {
		settings = {
			configuration = {
				preview = true,
			}
		}
	}
}
vim.lsp.enable('my_lsp_python_ruff_ls')

-- My Language Server Config for Golang
vim.lsp.config['my_lsp_golang_gopls'] = {
	cmd = {'gopls', 'serve'},
	filetypes = { 'go' },
}
vim.lsp.enable('my_lsp_golang_gopls')

-- My Copilot Language Server Config
vim.lsp.config("copilot", {
	cmd = { "copilot-language-server", "--stdio" },
	root_markers = { ".git" },
	init_options = {
		editorInfo = {
			name = "Neovim",
			version = tostring(vim.version()),
		},
		editorPluginInfo = {
			name = "Neovim",
			version = tostring(vim.version()),
		},
	},
	settings = {
		telemetry = {
			telemetryLevel = "off",
		},
	},
})
vim.lsp.enable('copilot')
vim.lsp.inline_completion.enable()


-- Diagnostics
vim.diagnostic.config({
	-- Use the default configuration
	virtual_text = true,
	update_in_insert = true,

	-- Alternatively, customize specific options
	-- virtual_lines = {
	-- 	-- Only show virtual line diagnostics for the current cursor line
	-- 	current_line = false,
	-- },
})

-- LSP Global Options
--
-- This will avoid an annoying layout shift in the screen
vim.opt.signcolumn = 'yes'
