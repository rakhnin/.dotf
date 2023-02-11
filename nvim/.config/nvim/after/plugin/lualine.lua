require('lualine').setup {
	options = {
		theme = 'nord' -- 'tokyonight'
	},
    sections = {
        lualine_c = {
            {
                'buffers',
                show_filename_only = false,
                mode = 4,
                symbols = {
                    modified = ' ●',
                }
            }
        }
    }
}
