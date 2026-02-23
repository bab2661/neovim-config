return {
  'iamcco/markdown-preview.nvim',
  cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
  ft = { 'markdown' },
  build = 'npx --yes yarn install && npx --yes yarn build',
  init = function()
    vim.g.mkdp_filetypes = { 'markdown' }
  end,
}

