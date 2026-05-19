local opt  = vim.opt;

opt.number     = true;

opt.tabstop     = 4;
opt.shiftwidth  = 4;
opt.softtabstop = 4;
opt.expandtab   = true;
opt.autoindent  = true;

opt.wrap = false;

opt.cursorline = true;

opt.mouse:append("a");

opt.clipboard:append("unnamedplus");

opt.ignorecase = true;
opt.smartcase  = true;

opt.termguicolors   = true;

local api = vim.api;

api.nvim_set_hl(0, "Normal",        { fg = "#dddddd",    bg         = "none",       ctermbg = "none"    });
api.nvim_set_hl(0, "NonText",       { bg = "none",       ctermbg    = "none"                            });
api.nvim_set_hl(0, "String",        { fg = "#22bb66",    bg         = "none",       ctermbg = "none"    });
api.nvim_set_hl(0, "Comment",       { fg = "#dd88dd",    underline  = true                              });
api.nvim_set_hl(0, "Keyword",       { fg = "#66ffdd",    italic     = true                              });
api.nvim_set_hl(0, "Function",      { fg = "#66ddff"                                                    });
api.nvim_set_hl(0, "StatusLine",    { fg = "#225566",    bg         = "#66aabb",    bold = true         });
api.nvim_set_hl(0, "CursorLine",    { underline = true                                                  });
api.nvim_set_hl(0, "CursorLineNr",  { fg = "#ffaaff",    italic     = true,         underline = true	});
api.nvim_set_hl(0, "LineNr",        { fg = "#aaaaaa",    bold       = true		                        });
api.nvim_set_hl(0, "LineNrAbove",   { fg = "#aaaaaa",    bold       = true		                        });
api.nvim_set_hl(0, "LineNrBelow",   { fg = "#aaaaaa",    bold       = true		                        });
