return {
  "mattn/emmet-vim",
  ft = { "html", "javascriptreact", "typescriptreact" },
  init = function()
    vim.g.user_emmet_leader_key = "<C-e>"
    vim.g.user_emmet_settings = {
      javascriptreact = { extends = "jsx" },
      typescriptreact = { extends = "jsx" },
    }
  end,
}
