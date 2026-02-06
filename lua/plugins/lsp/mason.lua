return {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
	{"williamboman/mason.nvim", config = true},
	"neovim/nvim-lspconfig"
    },
    opts = {
	ensure_installed = {
	    "biome",
	    "clangd",
	    "jdtls",
	    "lua_ls",
	    "omnisharp",
	    "pyright",
	    "rust_analyzer",
	},
    },
    config = function(_, opts)
	require("mason").setup()
	require("mason-lspconfig").setup(opts)
    end,
}
