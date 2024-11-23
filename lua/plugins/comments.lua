return {
  "numToStr/Comment.nvim",
  config = function()
    local ft = require('Comment.ft')
    ft.php = {'//%s', '/*%s*/'}

    require("Comment").setup()
  end,
}
