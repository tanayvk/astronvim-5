local Terminal = require("toggleterm.terminal").Terminal
local terminals = {}

local function toggle_term(num)
  if not terminals[num] then terminals[num] = Terminal:new { direction = "float", hidden = true } end
  terminals[num]:toggle()
end

return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          ["<Leader>t1f"] = {
            function() toggle_term(1) end,
            desc = "1st floating toggleterm",
          },
          ["<Leader>t2f"] = {
            function() toggle_term(2) end,
            desc = "2nd floating toggleterm",
          },
          ["<Leader>t3f"] = {
            function() toggle_term(3) end,
            desc = "3rd floating toggleterm",
          },
          ["<Leader>t4f"] = {
            function() toggle_term(4) end,
            desc = "4th floating toggleterm",
          },
        },
      },
    },
  },
}
