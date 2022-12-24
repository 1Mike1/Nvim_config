require('rose-pine').setup({
	--- @usage 'main' | 'moon'
	dark_variant = 'main',
	bold_vert_split = false,
	dim_nc_background = false,
	disable_background = true,
	disable_float_background = true,
	disable_italics = false,

	--- @usage string hex value or named color from rosepinetheme.com/palette
	groups = {
		background = 'base',
		panel = 'surface',
		border = 'highlight_med',
		comment = 'muted',
		link = 'iris',
		punctuation = 'subtle',

		error = 'love',
		hint = 'iris',
		info = 'foam',
		warn = 'gold',

		headings = {
			h1 = 'iris',
			h2 = 'foam',
			h3 = 'rose',
			h4 = 'gold',
			h5 = 'pine',
			h6 = 'foam',
		}
		-- or set all headings at once
		-- headings = 'subtle'
	},

	-- Change specific vim highlight groups
	highlight_groups = {
		ColorColumn = { bg = 'rose' }
	}
})

local colors = require("tokyonight.colors").setup({})

require("tokyonight").setup({
  style = "night",
  transparent = true,
  styles = {
    sidebars = "transparent",
    floats = "transparent",
  },
})

-- vim.cmd("highlight WinSeparator guifg=" .. colors.blue)
vim.cmd("highlight WinSeparator guifg=" .. colors.bg_highlight)
vim.cmd([[colorscheme tokyonight]])

-- set colorscheme after options
--vim.cmd('colorscheme rose-pine')
-- vim.api.nvim_set_hl(0, 'Normal', {bg="none"})
-- vim.api.nvim_set_hl(0, 'NormalFloat', {bg="none"})
