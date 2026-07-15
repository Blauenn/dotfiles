vim.g.mapleader = " "

vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)

-- LSP keymaps (only active when an LSP is attached)
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local opts = { buffer = args.buf }

    -- Navigation
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)        -- go to definition
    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)        -- find all references
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)              -- hover docs

    -- Diagnostics
    vim.keymap.set("n", "<leader>we", vim.diagnostic.open_float, opts)  -- show error
    vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)          -- prev error
    vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)          -- next error

    -- Actions
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)        -- rename symbol
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)   -- code actions
  end
})
