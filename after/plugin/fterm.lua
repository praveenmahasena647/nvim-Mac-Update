local fterm = require("FTerm")

vim.keymap.set('n','\\','<CMD>lua require("FTerm").toggle()<CR>',{silent=true,noremap=true})
