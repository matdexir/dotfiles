local twilight = require("twilight")
twilight.setup({
    dimming = {
    alpha = 0.50, -- amount of dimming
    -- we try to get the foreground from the highlight groups or fallback color
    color = { "Normal", "#ffffff" },
    inactive = false, -- when true, other windows will be fully dimmed (unless they contain the same buffer)
  },
  context = 10,
  treesitter = true,
})
