return {
  "JoosepAlviste/nvim-ts-context-commentstring",

  {
    'numToStr/Comment.nvim',
    config = function()
      local comment = require('Comment')

      comment.setup({
        pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
      })
    end,
    opts = {}
  },
}
