require "mason".setup();

require "mason-lspconfig".setup({
    ensure_installed = {
        "lua_ls",
        "clangd",
        "slangd",
        "luau_lsp"
    }
})

local capabilities = require "cmp_nvim_lsp".default_capabilities();

vim.lsp.config("clangd", {
    filetypes = { "c", "cpp", "h", "hpp" }
});

vim.lsp.config("lua_ls", {
    capabilities = capabilities
});

vim.lsp.config("slangd", {
    capabilities = capabilities,
    filetypes = { "slang" },
    cmd = { "slangd" },
    root_markers = { ".slang", ".git" }
});

vim.lsp.enable("slangd");
