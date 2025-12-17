vim.filetype.add {
  pattern = {
    -- Common Ansible file patterns
    [".*/playbooks/.*%.ya?ml"] = "yaml.ansible",
    [".*/roles/.*/tasks/.*%.ya?ml"] = "yaml.ansible",
    [".*/roles/.*/handlers/.*%.ya?ml"] = "yaml.ansible",
    [".*/roles/.*/defaults/.*%.ya?ml"] = "yaml.ansible",
    [".*/roles/.*/vars/.*%.ya?ml"] = "yaml.ansible",
    [".*/roles/.*/meta/.*%.ya?ml"] = "yaml.ansible",
    [".*/inventory/.*%.ya?ml"] = "yaml.ansible",
    [".*/group_vars/.*%.ya?ml"] = "yaml.ansible",
    [".*/host_vars/.*%.ya?ml"] = "yaml.ansible",
  },
  filename = {
    ["playbook.yml"] = "yaml.ansible",
    ["playbook.yaml"] = "yaml.ansible",
    ["site.yml"] = "yaml.ansible",
    ["site.yaml"] = "yaml.ansible",
    ["main.yml"] = function(path)
      -- Only set to ansible if inside a roles directory
      if path:match "/roles/" then
        return "yaml.ansible"
      end
      return "yaml"
    end,
  },
}

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "yaml", "yaml.ansible" },
  callback = function()
    print("yaml detected")
    vim.opt_local.expandtab = true
    vim.opt_local.shiftwidth = 2
    vim.opt_local.tabstop = 2
    vim.opt_local.softtabstop = 2
  end,
})
