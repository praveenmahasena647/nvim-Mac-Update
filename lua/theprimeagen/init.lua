require("theprimeagen.set")
require("theprimeagen.remap")

-- DO NOT INCLUDE THIS
vim.opt.rtp:append("~/personal/streamer-tools")
-- DO NOT INCLUDE THIS

local augroup = vim.api.nvim_create_augroup
local ThePrimeagenGroup = augroup('ThePrimeagen', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

function R(name)
    require("plenary.reload").reload_module(name)
end

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

autocmd({"BufWritePre"}, {
    group = ThePrimeagenGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

vim.g.go_highlight_fields = 1
vim.g.go_highlight_functions = 1
vim.g.go_highlight_function_calls = 1
vim.g.go_highlight_extra_types = 1
vim.g.go_highlight_operators = 1
vim.g.go_fmt_autosave = 1
vim.g.go_fmt_command = "goimports"
vim.g.go_debug_preserve_layout = 0
vim.g.go_auto_type_info = 1
vim.g.acp_completeoptPreview = 1

require 'go'.setup({
    goimport = 'gopls', -- if set to 'gopls' will use golsp format
    gofmt = 'gopls', -- if set to gopls will use golsp format
    max_line_len = 120,
    tag_transform = false,
    test_dir = '',
    comment_placeholder = '   ',
    lsp_cfg = true, -- false: use your own lspconfig
    lsp_gofumpt = true, -- true: set default gofmt in gopls format to gofumpt
    lsp_on_attach = true, -- use on_attach from go.nvim
    dap_debug = true,
})
vim.g.go_def_mode='gopls'
vim.g.go_info_mode='gopls'

vim.cmd [[
augroup _git
autocmd!
autocmd FileType gitcommit setlocal wrap
autocmd FileType gitcommit setlocal spell
augroup end
augroup _markdown
autocmd!
autocmd FileType markdown setlocal wrap
autocmd FileType markdown setlocal spell
augroup end
augroup _auto_resize
autocmd!
autocmd VimResized * tabdo wincmd =
augroup end
augroup _alpha
autocmd!
autocmd User AlphaReady set showtabline=0 | autocmd BufUnload <buffer> set showtabline=1
augroup end
]]

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
