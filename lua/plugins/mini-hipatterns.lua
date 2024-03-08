return {
  "echasnovski/mini.hipatterns",
  event = "BufReadPre",
  opts = {},
  config = function()
    local hipatterns = require("mini.hipatterns")
    return hipatterns.setup({
      highlighters = {
        hex_color = hipatterns.gen_highlighter.hex_color(),
      },
    })
  end,
}

-- #000000 #ffffff
