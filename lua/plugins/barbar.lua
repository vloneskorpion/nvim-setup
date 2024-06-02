return {
  -- Specify the plugin 'romgrk/barbar.nvim'
  {
    "romgrk/barbar.nvim",
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    config = function()
      local opts = { noremap = true, silent = true }

      -- Keymaps for barbar.nvim
      vim.keymap.set('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
      vim.keymap.set('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
      vim.keymap.set('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
      vim.keymap.set('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)
      vim.keymap.set('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
      vim.keymap.set('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
      vim.keymap.set('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
      vim.keymap.set('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
      vim.keymap.set('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
      vim.keymap.set('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
      vim.keymap.set('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
      vim.keymap.set('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
      vim.keymap.set('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
      vim.keymap.set('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)
      vim.keymap.set('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
      vim.keymap.set('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
      vim.keymap.set('n', '<A-m>', '<Cmd>BufferPick<CR>', opts)
      vim.keymap.set('n', '<leader>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
      vim.keymap.set('n', '<leader>bn', '<Cmd>BufferOrderByName<CR>', opts)
      vim.keymap.set('n', '<leader>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
      vim.keymap.set('n', '<leader>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
      vim.keymap.set('n', '<leader>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

      -- Other available commands:
      -- :BarbarEnable - enables barbar (enabled by default)
      -- :BarbarDisable - very bad command, should never be used
    end
  }
}

