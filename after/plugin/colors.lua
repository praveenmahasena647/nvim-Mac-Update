require('rose-pine').setup({
    disable_background = true
})
require('fluoromachine').setup({
  theme = 'retrowave',
  transparent = 'full',
      overrides = {
       ['@type'] = { italic = true, bold = false },
       ['@function'] = { italic = false, bold = false },
       ['@comment'] = { italic = true },
       ['@keyword'] = { italic = false },
       ['@constant'] = { italic = false, bold = false },
       ['@variable'] = { italic = true },
       ['@field'] = { italic = true },
       ['@parameter'] = { italic = true },
   },
   colors=function (_,d)
       return{
           bg = '#190920',
           alt_bg = d('#190920', 20),
           cyan = '#49eaff',
           red = '#ff1e34',
           yellow = '#ffe756',
           orange = '#f38e21',
           pink = '#ffadff',
           purple = '#9544f7',
       }
   end
})

require("gruvbox").setup({
    terminal_colors = true, -- add neovim terminal colors
    undercurl = true,
    underline = true,
    bold = true,
    italic = {
        strings = true,
        emphasis = true,
        comments = true,
        operators = false,
        folds = true,
    },
    strikethrough = true,
    invert_selection = false,
    invert_signs = false,
    invert_tabline = false,
    invert_intend_guides = false,
    inverse = true, -- invert background for search, diffs, statuslines and errors
    contrast = "hard", -- can be "hard", "soft" or empty string
    palette_overrides = {},
    overrides = {},
    dim_inactive = false,
    transparent_mode = false,
})

function ColorMyPencils(color)
	color = color or "rose-pine-moon"
	vim.cmd.colorscheme(color)

    vim.g.gruvbox_contrast_dark = 'hard'
    vim.g.tokyonight_transparent_sidebar = true
    vim.g.tokyonight_transparent = true
    vim.g.gruvbox_invert_selection = '0'
    vim.opt.background = "dark"
    vim.g.tokyonight_style = 'night'
    vim.g.tokyonight_enable_italic = true
    vim.g.tokyonight_transparent_background=true

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

--ColorMyPencils("gruvbox")
ColorMyPencils("fluoromachine")
