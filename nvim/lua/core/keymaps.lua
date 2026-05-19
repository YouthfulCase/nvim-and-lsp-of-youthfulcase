local keymap = vim.keymap;

keymap.set('n', "<c-s>", ":w <cr>");
keymap.set('n', "q", ":q! <cr>");

keymap.set('n', "sd", "<c-w>v");
keymap.set('n', "sw", "<c-w>s");

keymap.set('n', "e", ":nohl<cr>");

keymap.set('n', "<space>", ":NvimTreeToggle <cr>");
