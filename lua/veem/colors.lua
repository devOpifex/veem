-- veem.nvim color palette
-- A monochrome colorscheme with subtle accents

---@class VeemColors
local M = {
    -- Core accent colors (from lackluster)
    lack = "#708090",      -- Slate gray - strings, special
    luster = "#deeeed",    -- Off-white - function definitions

    -- Custom accent colors
    branch = "#789978",    -- Muted green - if, else, switch, etc.
    retclr = "#7788AA",    -- Muted blue - return keyword
    directive = "#7A7A7A", -- Gray - preprocessor directives

    -- Supporting colors
    orange = "#ffaa88",
    yellow = "#abab77",
    green = "#789978",
    blue = "#7788AA",
    red = "#D70000",

    -- Grayscale palette (dark to light)
    black = "#000000",
    gray1 = "#080808",
    gray2 = "#191919",
    gray3 = "#2a2a2a",
    gray4 = "#444444",
    gray5 = "#555555",
    gray6 = "#7a7a7a",
    gray7 = "#aaaaaa",
    gray8 = "#cccccc",
    gray9 = "#DDDDDD",

    -- Special purpose colors
    none = "NONE",
}

-- Background colors
M.bg = {
    main = "#101010",
    menu = "#191919",
    popup = "#1A1A1A",
    statusline = "#242424",
    cursorline = "#191919",
    colorcolumn = "#080808",
    visual = "#2a2a2a",
    search = "#708090",
    search_cur = "#cccccc",
}

-- Foreground colors
M.fg = {
    normal = "#cccccc",
    comment = "#3A3A3A",
    keyword = "#666666",
    whitespace = "#202020",
    line_nr = "#444444",
    line_nr_cur = "#aaaaaa",
    border = "#444444",
    title = "#555555",
}

return M
