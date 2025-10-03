

-- Bufferline Tabs switch
for i = 1, 9 do
  vim.keymap.set("n", ("<leader>%s"):format(i), function()
    local ft = vim.bo.filetype
    if ft ~= "neo-tree" then
      vim.cmd("BufferLineGoToBuffer " .. i)
    end
  end, { desc = "Go to buffer " .. i })
end


return {
    {
      "akinsho/bufferline.nvim",
      version = "*",
      dependencies = { "nvim-tree/nvim-web-devicons" },
      opts = {
        options = {
          mode = "buffers",
          always_show_bufferline = true,
          diagnostics = "nvim_lsp",
          separator_style = "slant",
          offsets = {
            {
              filetype = "neo-tree",
              highlight = "Directory",
              separator = true,
            }
          }
        }
      }
    }
}
