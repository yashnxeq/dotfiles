
return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons", opt = true },
    opts = {
      options = {
        theme = "auto",
        section_separators = "",
        component_separators = "",
      },
      -- normal sections
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch" },
        lualine_c = { "filename" },
        lualine_x = { "encoding", "fileformat", "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
      -- inactive sections (for buffers like neo-tree)
      inactive_sections = {
        lualine_a = { "" },
        lualine_b = { "" },
        lualine_c = { "Neo-tree" }, -- show dummy label
        lualine_x = { "" },
        lualine_y = { "" },
        lualine_z = { "" },
      },
      -- disable any other filetypes explicitly if needed
      extensions = { "neo-tree" },
    },
    config = function(_, opts)
      vim.o.laststatus = 3 -- global statusline
      require("lualine").setup(opts)
    end,
  }
}
