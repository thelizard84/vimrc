local plugins = {
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    'barrett-ruth/live-server.nvim',
    build = 'yarn global add live-server',
    config = true,
    lazy = false,
  }
}

return plugins
