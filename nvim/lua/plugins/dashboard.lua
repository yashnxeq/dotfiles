
local nvim_config_path
if vim.fn.has("win32") == 1 then
    nvim_config_path = vim.fn.expand("$LOCALAPPDATA/nvim"):gsub("\\", "/")
else
    nvim_config_path = vim.fn.expand("~/.config/nvim")
end

return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup({
      theme = 'doom',
      config = {
        header = {
          '',
          '',
          '',
          '',
          '',
          '__      ________ ____  _   _ _____ __  __ ',
          '\\ \\    / /  ____/ __ \\| \\ | |_   _|  \\/  |',
          ' \\ \\  / /| |__ | |  | |  \\| | | | | \\  / |',
          '  \\ \\/ / |  __|| |  | | . ` | | | | |\\/| |',
          '   \\  /  | |___| |__| | |\\  |_| |_| |  | |',
          '    \\/   |______\\____/|_| \\_|_____|_|  |_|',
          '',
          '',
          '',
        },
        center = {
          {
            icon = '󰈞  ',
            desc = 'Find File                 ',
            key = 'f',
            key_hl = 'Keyword',
            action = 'Telescope find_files',
          },
          {
            icon = '  ',
            desc = 'New File                  ',
            key = 'n',
            key_hl = 'Keyword',
            action = 'enew',
          },
          {
            icon = '  ',
            desc = 'Lazyvim                   ',
            key = 'p',
            key_hl = 'Keyword',
            action = 'Lazy',
          },
          {
            icon = '  ',
            desc = 'Settings                 ',
            key = 's',
            key_hl = 'Keyword',
            action = string.format(
                'lua require("telescope.builtin").find_files({ cwd = "%s" })',
                nvim_config_path
            ),
          },
          {
            icon = '  ',
            desc = 'Quit                     ',
            key = 'q',
            key_hl = 'Keyword',
            action = 'quit',
          },
        },
        footer = function()
          local stats = require("lazy").stats()
          return {
            '',
            '',
            '🔌 ' .. stats.count .. ' plugins loaded in '
                  .. math.floor(stats.startuptime) .. 'ms',
          }
        end,
      },
    })
  end,
}
