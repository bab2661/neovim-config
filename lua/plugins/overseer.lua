return {
  "stevearc/overseer.nvim",
  lazy = false, -- important for Telescope
  opts = {},
  config = function(_, opts)
    require("overseer").setup(opts)

    vim.keymap.set(
      "n",
      "<leader>or",
      "<cmd>OverseerRun<CR>",
      { desc = "Overseer: Run task" }
    )

    vim.keymap.set(
	"n",
	"<leader>ot",
	"<cmd>OverseerToggle<CR>",
	{ desc = "Overseer: Toggle task list" }
    )
    end,
}
