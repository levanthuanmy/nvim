local status, null_ls = pcall(require, "null-ls")
if (not status) then return end

local augroup_format = vim.api.nvim_create_augroup("Format", { clear = true })
local builtins = null_ls.builtins

---@diagnostic disable-next-line: redundant-parameter
null_ls.setup {
  sources = {
    builtins.diagnostics.eslint_d.with({
      diagnostics_format = '[eslint_d] #{m}\n(#{c})'
    }),

    builtins.completion.luasnip,
    builtins.formatting.prettierd,

    builtins.hover.dictionary,
    builtins.hover.printenv,

    builtins.code_actions.eslint_d,

  },
  on_attach = function(client, bufnr)
    if client.server_capabilities.documentFormattingProvider then
      vim.api.nvim_clear_autocmds { buffer = 0, group = augroup_format }
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup_format,
        buffer = 0,
        callback = function() vim.lsp.buf.format({ insertFinalNewline = true }) end
      })
    end
  end,
}
