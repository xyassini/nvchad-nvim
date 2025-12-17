vim.filetype.add {
  extension = {
    tf = "terraform",
    tfvars = "terraform-vars",
  },
}

-- Terraform LSP doesn't recognize new files until restarting the lsp...
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = { "*.tf", "*.tfvars" },
  callback = function(args)
    -- Only on first write (new file)
    if args.match and vim.fn.getfsize(args.match) == 0 then
      vim.cmd "LspRestart"
    end
  end,
})
