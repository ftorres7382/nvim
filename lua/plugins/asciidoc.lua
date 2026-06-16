return {
  -- Core editing, syntax highlighting, and folding features
  {
    "habamax/vim-asciidoctor",
    ft = { "asciidoc", "asciidoctor" }, -- Added both filetype variants
  },

  -- Live browser preview server
  {
    "tigion/nvim-asciidoc-preview",
    ft = { "asciidoc", "asciidoctor" }, -- Added both filetype variants so it loads properly
    build = "cd server && npm install --omit=dev --no-save",
    opts = {
      server = {
        converter = "js",
      },
      preview = {
        position = "current",
      },
    },
    keys = {
      { "<leader>ap", "<cmd>AsciiDocPreview<cr>", desc = "Toggle AsciiDoc Preview" },
      { "<leader>as", "<cmd>AsciiDocPreviewStop<cr>", desc = "Stop AsciiDoc Preview" },
    },
  },
}
