local mc = require "multicursor-nvim";
mc.setup();

vim.keymap.set({ 'n', 'v' }, "<c-up>", function() mc.lineAddCursor(-1); end)
vim.keymap.set({ 'n', 'v' }, "<c-down>", function() mc.lineAddCursor(1); end)
