return {
    "saghen/blink.cmp",
    version = "1.*",

    opts = {
        keymap = {
            preset = "default",
	    ["<CR>"] = { "accept", "fallback" },
        },

        appearance = {
            nerd_font_variant = "mono",
        },

        completion = {
	    list = {
		selection = {
		    preselect = true,
		},
	    },
	    documentation = {
		auto_show = false,
	    },
	    menu = {
		draw = {
		    columns = {
			{ "label", "label_description", gap = 1 },
			{ "kind_icon", "kind" },
		    },
		},
	    },
        },

        sources = {
            default = { "lsp", "path", "snippets", "buffer"},
	    
        },

        fuzzy = {
            implementation = "prefer_rust_with_warning",
        },
    },
}

