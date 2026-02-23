return {
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        -- C# configuration
        cs = { "csharpier" }, 
        -- Rust configuration
        rust = { "rustfmt", lsp_format = "fallback" },
        -- Previous languages
        python = { "isort", "black" },
        javascript = { "prettierd", "prettier", stop_after_first = true },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback",
      },
    },
  },
}

