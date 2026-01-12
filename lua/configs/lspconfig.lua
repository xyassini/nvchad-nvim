require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "emmet_language_server",
  "cssls",
  "svelte",
  "eslint",
  "angularls",
  "tailwindcss",
  "terraformls",
  "tflint",
  "ansible-lint",
  "ansiblels",
  "yamlls",
  "yamllint",
  "djlint",
  "jinja_lsp",
  "gopls",
  "vtsls",
}

vim.lsp.enable(servers)

vim.lsp.config("vtsls", {
  filetypes = {
    "javascript",
    "javascriptreact",
    "javascript.jsx",
    "typescript",
    "typescriptreact",
    "typescript.tsx",
    "svelte",
  },
})

vim.lsp.config("eslint", {
  filetypes = {
    "javascript",
    "javascriptreact",
    "javascript.jsx",
    "typescript",
    "typescriptreact",
    "typescript.tsx",
    "vue",
    -- "svelte", -- Clashes with svelte language server
    "astro",
    "htmlangular",
  },
})
-- read :h vim.lsp.config for changing options of lsp servers
