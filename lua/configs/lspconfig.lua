require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "svelte", "eslint", "vtsls", "angularls", "tailwindcss", "terraformls" }
vim.lsp.enable(servers)

vim.lsp.config("vtsls", {
  filetypes = {
    "javascript",
    "javascriptreact",
    "javascript.jsx",
    "typescript",
    "typescriptreact",
    "typescript.tsx",
    "svelte"
  },
})

-- read :h vim.lsp.config for changing options of lsp servers
