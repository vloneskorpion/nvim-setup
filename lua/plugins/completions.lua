return {
  {
    "hrsh7th/cmp-nvim-lsp"
  },
  {
    'github/copilot.vim',
    config = function()
      -- vim.cmd [[highlight CopilotSuggestion ctermfg=8 guifg=white guibg=#5c6370]]
      vim.cmd [[highlight CopilotSuggestion ctermfg=8 guifg=#21a6ff]]
      vim.keymap.set('n', '<leader>cp', '<cmd>Copilot enable<CR>', { desc = 'copilot enable' }, { silent = true })
      vim.keymap.set('n', '<leader>cd', '<cmd>Copilot disable<CR>', { desc = 'copilot disable' }, { silent = true })
      vim.keymap.set('n', '<leader>cs', '<cmd>Copilot status<CR>', { desc = 'copilot status' }, { silent = true })
    end,
  },
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
    },
  },
  {
    "hrsh7th/nvim-cmp",
    config = function()
      local cmp = require("cmp")
      require("luasnip.loaders.from_vscode").lazy_load()

      cmp.setup({
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" }, -- For luasnip users.
        }, {
          { name = "buffer" },
        }),
      })
    end,
  },
}
