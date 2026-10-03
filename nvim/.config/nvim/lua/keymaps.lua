
vim.g.mapleader = " "
vim.g.maplocalleader = " "


-- Normal Mode Keymaps
vim.keymap.set("n", "<A-l>", "<C-w>l", { noremap = true, silent = true })
vim.keymap.set("n", "<A-h>", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<A-k>", "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "<A-j>", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<A-Right>", "<C-w>l", { noremap = true, silent = true })
vim.keymap.set("n", "<A-Left>", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<A-Up>", "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "<A-Down>", "<C-w>j", { noremap = true, silent = true })

vim.keymap.set("n", "<C-l>", ":bnext<Cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-h>", ":bprevious<Cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-Right>", ":bnext<Cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-Left>", ":bprevious<Cr>", { noremap = true, silent = true })

vim.keymap.set("n", "<C-u>", "<C-y>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-d>", "<C-e>", { noremap = true, silent = true })


-- deactivate arrow key in normal mode
vim.api.nvim_set_keymap('n', '<Down>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Left>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Right>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Up>', '<Nop>', { noremap = true, silent = true })

-- Insert Mode Keympas
vim.keymap.set("i", "<C-s>", vim.lsp.buf.signature_help, { noremap = true, silent = true })
vim.keymap.set("i", "<C-h>", "<Left>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-l>", "<Right>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-j>", "<Down>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-k>", "<Up>", { noremap = true, silent = true })

vim.keymap.set("i", "<F4>", function()
  require("smartwork").termin()
end, { noremap = true, silent = true })

vim.keymap.set("i", "<F5>", function()
  require("smartwork").ticket()
end, { noremap = true, silent = true })

vim.keymap.set("n", "<F6>", function()
  require("smartwork").printme()
end, { noremap = true, silent = false })


-- vim.keymap.set("i", "<F6>", function()
--   require("smartwork").resolve()
-- end, { noremap = true, silent = true })

-- Visual Mode Keymaps
vim.api.nvim_set_keymap('v', '<Esc>', '"+y', { noremap = true, silent = true })


-- Terminal mode
vim.keymap.set("t", "<esc>", "<C-\\><C-n>", { noremap = true, silent = true })

-- Copilot
vim.keymap.set('n', '<C-x>', function()
  vim.cmd('CopilotChatToggle')
end, { noremap = true, silent = true, desc = 'Open CopilotChat' })

vim.keymap.set('n', '<leader>x', function()
  vim.cmd('Copilot panel toggle')
end, { noremap = true, silent = true, desc = 'Open Copilot panel' })

-- by TJ DeVries
P = function(v)
	print(vim.inspect(v))
	return v
end

RELOAD = function(...)
	return require("plenary.reload").reload_module(...)
end

R = function(name)
	RELOAD(name)
	return require(name)
end

