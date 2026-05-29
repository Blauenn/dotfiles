return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  lazy = false,
  opts = {
    ensure_installed = {
      "lua", "python", "javascript", "typescript",
      "bash", "json", "yaml", "toml", "markdown",
      "html", "tsx", "sql",
    },
    highlight = { enable = true },
  },
}
