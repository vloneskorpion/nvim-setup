return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
  --vim.opt.background = "light"
  require("catppuccin").setup({
      color_overrides = {
      mocha = {
        rosewater = "#a43b35",
        flamingo  = "#da3537",
        pink      = "#d332a1",
        mauve     = "#aa3685",
        red       = "#ff3532",
        maroon    = "#de3631",
        peach     = "#f36c0b",
        yellow    = "#bd8800",
        green     = "#596600",
        teal      = "#287e5e",
        sky       = "#52b1c7",
        sapphire  = "#3fb4b8",
        blue      = "#317da7",
        lavender  = "#474155",
        text      = "#4d4742",
        subtext1  = "#5b5549",
        subtext0  = "#6d6655",
        overlay2  = "#786d5a",
        overlay1  = "#8c7c62",
        overlay0  = "#a18d66",
        surface2  = "#c9bea5",
        surface1  = "#0ea3e3", --d8d3ba
        surface0  = "#e8e2c8",
        base      = "#ebe4c8",
        mantle    = "#e1dab5",
        crust     = "#bdc0a0",
       },
    },
  })
  vim.cmd.colorscheme "catppuccin-mocha"
  end
}
 
