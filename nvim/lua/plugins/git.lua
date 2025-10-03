

return {
  "lewis6991/gitsigns.nvim",
  config = function()
    require("gitsigns").setup({
      signs = {
        add = { text = "+" },
        change = { text = "~" },
        delete = { text = "_" },
        topdelete = { text = "‾" },
        changedelete = { text = "~" },
      },
      current_line_blame = true,  -- optional
    })

    vim.keymap.set('n', '<leader>gb', require('gitsigns').blame_line)
    vim.keymap.set('n', '<leader>hp', require('gitsigns').preview_hunk)
  end
}
