
-- Focus Explorer
vim.keymap.set('n', '<leader>f', function()
  for _, win in ipairs(vim.api.nvim_list_wins()) do
    local bufname = vim.api.nvim_buf_get_name(vim.api.nvim_win_get_buf(win))
    if bufname:match("neo%-tree") then
      vim.api.nvim_set_current_win(win)
      return
    end
  end
end, { noremap = true, silent = true, desc = "Focus Neo-tree" })


return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    },
    lazy = false,
    ---@module "neo-tree"
    ---@type neotree.Config?
    opts = {
      filesystem = {
        filtered_items = {
          visible = true,          -- Show all files, even hidden ones
          hide_dotfiles = false,   -- Show dotfiles like .git, .env
          hide_gitignored = false, -- Show files ignored by .gitignore
        },
      },
      window = {
        mappings = {
          ["<cr>"] = "open",
          ["o"]    = "open_vsplit"
        },
      },
    },
  }
}
