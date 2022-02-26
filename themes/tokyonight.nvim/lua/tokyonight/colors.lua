local util = require("tokyonight.util")

local M = {}

---@param config Config
---@return ColorScheme
function M.setup(config)
  config = config or require("tokyonight.config")

  -- Color Palette
  ---@class ColorScheme
  local colors = {}

  colors = {
    none = "NONE",
    bg_dark = "#282a36", -- background lua line
    bg = "#282a36", -- actual background
    bg_highlight = "#44475A", -- current line highlight
    terminal_black = "#1f2335", -- ????
    fg = "#d8dee9", -- normal fg
    fg_dark = "#d8dee9", -- lualine file name
    fg_gutter = "#5e6176", -- NOT current line number
    dark3 = "#1f2335", -- ????
    comment = "#565f89", -- commentary
    dark5 = "#b1d0e3", -- current line number
    blue0 = "#5e8d87", -- border for telescope
    blue = "#458588", -- function names
    cyan = "#7e9cd8", -- keywords (import etc) 
    blue1 = "#6ab0b4", -- types
    blue5 = "#96c7ca", -- small icons
    blue6 = "#47ced6", -- for regexes
    blue7 = "#000000", -- not important
    magenta = "#ef7a85", -- keywords (Classes, Promise etc.) 
    magenta2 = "#000000", -- not important
    purple = "#f0c987", -- keywords (class, public etc.)
    orange = "#ff9e64", -- numbers
    yellow = "#e0af68", -- parameters
    green = "#ffb185", -- Strings
    green1 = "#73daca", -- properties
    green2 = "#000000", -- not important
    teal = "#f8dd3e", --hints
    red = "#f7768e", -- keywords (this etc.)
    red1 = "#db4b4b", -- error
    git = { change = "#6183bb", add = "#449dab", delete = "#914c54", conflict = "#bb7a61" },
    gitSigns = { add = "#164846", change = "#394b70", delete = "#823c41" },
  }
  if config.style == "night" or config.style == "day" or vim.o.background == "light" then
    colors.bg = "#1a1b26"
    colors.bg_dark = "#16161e"
  end
  util.bg = colors.bg
  util.day_brightness = config.dayBrightness

  colors.diff = {
    add = util.darken(colors.green2, 0.15),
    delete = util.darken(colors.red1, 0.15),
    change = util.darken(colors.blue7, 0.15),
    text = colors.blue7,
  }

  colors.gitSigns = {
    add = util.brighten(colors.gitSigns.add, 0.2),
    change = util.brighten(colors.gitSigns.change, 0.2),
    delete = util.brighten(colors.gitSigns.delete, 0.2),
  }

  colors.git.ignore = colors.dark3
  colors.black = util.darken(colors.bg, 0.8, "#000000")
  colors.border_highlight = colors.blue0
  colors.border = colors.black

  -- Popups and statusline always get a dark background
  colors.bg_popup = colors.bg_dark
  colors.bg_statusline = colors.bg_dark

  -- Sidebar and Floats are configurable
  colors.bg_sidebar = (config.transparentSidebar and colors.none) or config.darkSidebar and colors.bg_dark or colors.bg
  colors.bg_float = config.darkFloat and colors.bg_dark or colors.bg

  colors.bg_visual = util.darken(colors.blue0, 0.7)
  colors.bg_search = colors.blue0
  colors.fg_sidebar = colors.fg_dark

  colors.error = colors.red1
  colors.warning = colors.yellow
  colors.info = colors.yellow
  colors.hint = colors.teal

  util.color_overrides(colors, config)

  if config.transform_colors and (config.style == "day" or vim.o.background == "light") then
    return util.light_colors(colors)
  end

  return colors
end

return M
