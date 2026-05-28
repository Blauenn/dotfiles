return {
    {
	"williamboman/mason.nvim",
	opts = {}
    },
    {
	"williamboman/mason-lspconfig.nvim",
	opts = {
	    ensure_installed = {
		"pyright",
		"ts_ls",
		"sqlls",
	    },
	}
    },
    {
	"neovim/nvim-lspconfig",
    },
}
