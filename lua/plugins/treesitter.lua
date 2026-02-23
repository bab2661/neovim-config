return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    lazy = false,
    init = function()
	vim.treesitter.language.register("tsx", "javascriptreact")
	vim.treesitter.language.register("tsx", "typescriptreact")
	vim.api.nvim_create_autocmd("FileType", {
	    pattern = { "javascriptreact", "typescriptreact" },
	    callback = function(args)
		vim.treesitter.start(args.buf, "tsx")
	    end,
	})
    end,
    config = function()
	local configs = require("nvim-treesitter.config")
	configs.setup({
	    highlight = { enable = true },
	    indent = { enable = true },
	    autotag = { enable = true},
	    ensure_installed = {
		"lua",
		"python",
		"rust",
		"c",
		"java",
		"vim",
		"vimdoc",
		"html",
		"css",
		"c_sharp",
		"javacript",
		"tsx"
	    },
	    auto_install = false,
	})

    end
}
