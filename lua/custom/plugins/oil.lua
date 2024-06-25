return {
  'stevearc/oil.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('oil').setup {
      columns = { 'icon' },
      default_file_explorer = true,
      view_options = {
        show_hidden = true,
      },
    }
    vim.keymap.set('n', '-', require('oil').open)
    vim.keymap.set('n', '<Leader>e', require('oil').toggle_float)
  end,
}
