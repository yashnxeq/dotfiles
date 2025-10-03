

return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
        local toggleterm = require("toggleterm")
        toggleterm.setup({
            size = 32,
            open_mapping = nil,      -- use custom mapping
            hide_numbers = true,
            shade_filetypes = {},
            shade_terminals = true,
            start_in_insert = true,  -- cursor in terminal prompt
            insert_mappings = true,
            persist_size = true,
            direction = "horizontal",
            close_on_exit = true,
            shell = vim.o.shell,
        })

        -- <leader>` to toggle
        vim.keymap.set("n", "<leader>`", "<cmd>ToggleTerm<CR>", { noremap = true, silent = true })
        vim.keymap.set("t", "<leader>`", "<cmd>ToggleTerm<CR>", { noremap = true, silent = true })
    end
}
