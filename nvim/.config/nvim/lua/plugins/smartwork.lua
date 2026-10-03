
 -- Normal Mode Keymaps for SmartWork Plugin
 vim.keymap.set("n", "<F4>", function()
   require("smartwork").termin()
 end, { noremap = true, silent = true })
 
 vim.keymap.set("n", "<F5>", function()
   require("smartwork").ticket()
 end, { noremap = true, silent = true })
