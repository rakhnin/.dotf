require('session_manager').setup({
	autoload_mode = require('session_manager.config').AutoloadMode.LastSession, -- Define what to do when Neovim is started without arguments. Possible value    s: Disabled, CurrentDir, LastSession
	autosave_last_session = true, -- Automatically save last session on exit and on session switch.
	autosave_ignore_not_normal = true, -- Plugin will not save a session when no buffers are opened, or all of them aren't writable or listed.
	autosave_ignore_filetypes = {
		'gitcommit'
	},
	autosave_only_in_session = false, -- Always autosaves session. If true, only autosaves after a session is active.
	max_path_length = 80,  -- Shorten the display path if length exceeds this threshold. Use 0 if don't want to shorten the path at all.
})

