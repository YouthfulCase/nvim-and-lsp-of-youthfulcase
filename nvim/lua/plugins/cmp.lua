local cmp_status_ok, cmp = pcall(require, "cmp");
if not cmp_status_ok then return; end

local snip_status_ok, luasnip = pcall(require, "luasnip");
if not snip_status_ok then return; end

require "luasnip.loaders.from_vscode".lazy_load();

local function check_backspace()
    local col = vim.fn.col '.' - 1;
    return col == 0 or vim.fn.getline '.':sub(col, col):match '%s';
end

cmp.setup({
    snippet = {
        expand = function(args)
            require "luasnip".lsp_expand(args.body);
        end,
    },

    mapping = cmp.mapping.preset.insert({
        ["<c-d>"] = cmp.mapping.scroll_docs(-4),
        ["<c-u>"] = cmp.mapping.scroll_docs(4),
        ["<c-e>"] = cmp.mapping.abort(),
        ["<cr>"]  = cmp.mapping.confirm({select = true}),
    });

    sources = cmp.config.sources(
        {
            {name = "nvim_lsp"},
            {name = "luasnip"},
            {name = "path"},
        },
        {
            {name = "buffer"}
        }
    );
})


