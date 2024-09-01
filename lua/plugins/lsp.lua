return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      -- standardrb = {
      --   cmd = { os.getenv("HOME") .. "/.asdf/shims/standardrb", "--lsp" },
      -- },
      ruby_lsp = {
        init_options = {
          formatter = "standard",
          linters = { "standard" },
        },
      },
    },
  },
}
