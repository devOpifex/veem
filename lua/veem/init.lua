-- veem.nvim - A monochrome colorscheme with subtle accents
-- Inspired by lackluster.nvim

local M = {}

-- Expose colors for user customization
M.colors = require("veem.colors")

---@class VeemConfig
---@field transparent? boolean Enable transparent background
local default_config = {
    transparent = false,
}

---@type VeemConfig
M.config = vim.deepcopy(default_config)

--- Configure the colorscheme
---@param opts? VeemConfig
function M.setup(opts)
    M.config = vim.tbl_deep_extend("force", default_config, opts or {})
end

--- Load and apply the colorscheme
function M.load()
    -- Reset existing highlights
    if vim.g.colors_name then
        vim.cmd("hi clear")
    end

    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end

    -- Set colorscheme name and options
    vim.o.termguicolors = true
    vim.g.colors_name = "veem"

    -- Apply transparent background if configured
    if M.config.transparent then
        local c = M.colors
        c.bg.main = "NONE"
    end

    -- Apply all highlights
    require("veem.highlights").setup()
end

return M
