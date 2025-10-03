

return {
  "kevinhwang91/nvim-ufo",
  dependencies = {
    "kevinhwang91/promise-async",
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    vim.o.foldcolumn = "1"
    vim.o.foldlevel = 99
    vim.o.foldlevelstart = 99
    vim.o.foldenable = true

    require("ufo").setup({
      provider_selector = function(_, _, _)
        return { "treesitter", "indent" }
      end,
    })

    -- Code Folding
    vim.keymap.set("n", "zR", require("ufo").openAllFolds)
    vim.keymap.set("n", "zM", require("ufo").closeAllFolds)
    vim.keymap.set("n", "<leader>j", "za", { desc = "Toggle fold under cursor" })
  end,
}
