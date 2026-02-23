return {
  "windwp/nvim-ts-autotag",
  ft = { "html", "javascript", "typescript", "svelte", "vue" }, -- Supported file types
  config = function()
    require("nvim-ts-autotag").setup({
      -- Optional: add any configuration options here
      autotag = {
        enable = true,
      },
    })
  end,
}

