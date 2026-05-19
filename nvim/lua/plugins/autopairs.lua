local npairs_ok, npairs = pcall(require, "nvim-autopairs");
if not npairs_ok then return; end

npairs.setup();
