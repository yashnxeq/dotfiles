
return {
  -- Kanagawa colorscheme
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        local is_windows = vim.fn.has("win32") == 1
        if is_windows then
            vim.cmd("colorscheme kanagawa-lotus")
        else
            vim.cmd("colorscheme kanagawa-dragon")
        end
    end,
  },
}
