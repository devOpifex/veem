-- veem.nvim highlight definitions
local c = require("veem.colors")

local M = {}

--- Set a highlight group
---@param group string
---@param opts table
local function hl(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
end

--- Apply all highlight groups
function M.setup()
    -----------------------------------------------------------------------------
    -- Editor UI
    -----------------------------------------------------------------------------
    hl("Normal", { fg = c.fg.normal, bg = c.bg.main })
    hl("NormalFloat", { fg = c.fg.normal, bg = c.bg.popup })
    hl("NormalNC", { fg = c.fg.normal, bg = c.bg.main })

    hl("Cursor", { fg = c.bg.main, bg = c.fg.normal })
    hl("CursorLine", { bg = c.bg.cursorline })
    hl("CursorColumn", { bg = c.bg.cursorline })
    hl("ColorColumn", { bg = c.bg.colorcolumn })

    hl("LineNr", { fg = c.fg.line_nr })
    hl("CursorLineNr", { fg = c.fg.line_nr_cur })
    hl("SignColumn", { fg = c.fg.line_nr, bg = c.bg.main })

    hl("VertSplit", { fg = c.fg.border })
    hl("WinSeparator", { fg = c.fg.border })

    hl("StatusLine", { fg = c.gray7, bg = c.bg.statusline })
    hl("StatusLineNC", { fg = c.gray4, bg = c.gray1 })

    hl("TabLine", { fg = c.gray4, bg = c.gray2 })
    hl("TabLineFill", { fg = c.gray7, bg = c.bg.statusline })
    hl("TabLineSel", { fg = c.gray1, bg = c.gray8 })

    hl("Folded", { fg = c.gray4 })
    hl("FoldColumn", { fg = c.gray4 })

    hl("Title", { fg = c.fg.title })
    hl("NonText", { fg = c.gray5 })
    hl("EndOfBuffer", { fg = c.bg.main })
    hl("Whitespace", { fg = c.fg.whitespace })

    hl("Visual", { fg = c.black, bg = c.gray8 })
    hl("VisualNOS", { link = "Visual" })

    hl("Search", { fg = c.black, bg = c.bg.search })
    hl("IncSearch", { fg = c.black, bg = c.bg.search_cur })
    hl("CurSearch", { fg = c.black, bg = c.bg.search_cur })
    hl("Substitute", { link = "Search" })

    hl("MatchParen", { fg = c.bg.search_cur, bg = c.bg.search })

    hl("Pmenu", { fg = c.gray6, bg = c.bg.menu })
    hl("PmenuSel", { fg = c.black, bg = c.bg.search_cur })
    hl("PmenuSbar", { bg = c.gray3 })
    hl("PmenuThumb", { bg = c.gray5 })

    hl("FloatBorder", { fg = c.fg.border, bg = c.bg.popup })
    hl("FloatTitle", { fg = c.fg.title })

    hl("Question", { fg = c.gray6 })
    hl("QuickFixLine", { fg = c.green })
    hl("SpecialKey", { fg = c.gray5 })
    hl("Directory", { fg = c.gray5 })

    hl("WildMenu", { fg = c.black, bg = c.bg.search_cur })

    -----------------------------------------------------------------------------
    -- Messages
    -----------------------------------------------------------------------------
    hl("ErrorMsg", { fg = c.red })
    hl("WarningMsg", { fg = c.orange })
    hl("ModeMsg", { fg = c.luster })
    hl("MoreMsg", { fg = c.luster })
    hl("MsgArea", { fg = c.luster })

    -----------------------------------------------------------------------------
    -- Syntax (Vim built-in groups)
    -----------------------------------------------------------------------------
    hl("Comment", { fg = c.fg.comment })
    hl("SpecialComment", { fg = c.fg.comment })

    hl("Constant", { fg = c.gray7 })
    hl("String", { fg = c.lack })
    hl("Character", { link = "String" })
    hl("Number", { link = "Constant" })
    hl("Boolean", { link = "Constant" })
    hl("Float", { link = "Constant" })

    hl("Identifier", { fg = c.gray7 })
    hl("Function", { fg = c.luster })

    hl("Statement", { fg = c.fg.keyword })
    hl("Conditional", { fg = c.branch })      -- if, else, switch
    hl("Repeat", { fg = c.branch })           -- for, while, do
    hl("Label", { fg = c.fg.keyword })
    hl("Operator", { fg = c.gray6 })
    hl("Keyword", { fg = c.fg.keyword })
    hl("Exception", { fg = c.branch })        -- try, catch, throw

    hl("PreProc", { fg = c.directive })       -- Preprocessor directives
    hl("Include", { fg = c.directive })       -- #include
    hl("Define", { fg = c.directive })        -- #define
    hl("Macro", { fg = c.directive })         -- Macros
    hl("PreCondit", { fg = c.directive })     -- #if, #ifdef, etc.

    hl("Type", { fg = c.gray7 })
    hl("StorageClass", { fg = c.fg.keyword })
    hl("Structure", { fg = c.gray7 })
    hl("Typedef", { fg = c.gray8 })

    hl("Special", { fg = c.lack })
    hl("SpecialChar", { fg = c.green })
    hl("Tag", { fg = c.gray5 })
    hl("Delimiter", { fg = c.gray6 })
    hl("Debug", { fg = c.blue })

    hl("Underlined", { underline = true })
    hl("Ignore", { fg = c.gray4 })
    hl("Error", { fg = c.red })
    hl("Todo", { fg = c.gray6 })

    -----------------------------------------------------------------------------
    -- Treesitter Highlights
    -----------------------------------------------------------------------------
    -- Keywords
    hl("@keyword", { fg = c.fg.keyword })
    hl("@keyword.conditional", { fg = c.branch })
    hl("@keyword.repeat", { fg = c.branch })
    hl("@keyword.return", { fg = c.retclr })
    hl("@keyword.exception", { fg = c.branch })
    hl("@keyword.operator", { fg = c.gray6 })
    hl("@keyword.function", { fg = c.fg.keyword })
    hl("@keyword.import", { fg = c.directive })
    hl("@keyword.directive", { fg = c.directive })
    hl("@keyword.directive.define", { fg = c.directive })

    -- Attributes/Decorators
    hl("@attribute", { fg = c.directive })
    hl("@attribute.builtin", { fg = c.directive })

    -- Variables
    hl("@variable", { fg = c.gray8 })
    hl("@variable.builtin", { fg = c.gray8 })
    hl("@variable.parameter", { fg = c.gray7 })
    hl("@variable.member", { fg = c.gray7 })

    -- Constants
    hl("@constant", { fg = c.gray7 })
    hl("@constant.builtin", { fg = c.gray6 })
    hl("@constant.macro", { fg = c.gray6 })
    hl("@boolean", { fg = c.gray7 })
    hl("@number", { fg = c.gray7 })
    hl("@number.float", { fg = c.gray7 })

    -- Functions
    hl("@function", { fg = c.luster })
    hl("@function.builtin", { fg = c.gray5 })
    hl("@function.call", { fg = c.gray6 })
    hl("@function.macro", { fg = c.gray6 })
    hl("@function.method", { fg = c.luster })
    hl("@function.method.call", { fg = c.gray6 })

    -- Types
    hl("@type", { fg = c.gray7 })
    hl("@type.builtin", { fg = c.gray7 })
    hl("@type.definition", { fg = c.gray8 })
    hl("@type.qualifier", { fg = c.fg.keyword })

    -- Strings
    hl("@string", { fg = c.lack })
    hl("@string.documentation", { fg = c.fg.comment })
    hl("@string.escape", { fg = c.green })
    hl("@string.special", { fg = c.green })
    hl("@string.special.symbol", { fg = c.gray7 })
    hl("@string.special.url", { fg = c.gray4, underline = true })
    hl("@string.regexp", { fg = c.green })
    hl("@character", { fg = c.lack })
    hl("@character.special", { fg = c.green })

    -- Comments
    hl("@comment", { fg = c.fg.comment })
    hl("@comment.documentation", { fg = c.fg.comment })
    hl("@comment.todo", { fg = c.gray6 })
    hl("@comment.note", { fg = c.gray6 })
    hl("@comment.warning", { fg = c.orange })
    hl("@comment.error", { fg = c.red })

    -- Punctuation
    hl("@punctuation.bracket", { fg = c.gray6 })
    hl("@punctuation.delimiter", { fg = c.gray6 })
    hl("@punctuation.special", { fg = c.gray6 })

    -- Operators
    hl("@operator", { fg = c.gray6 })

    -- Constructors
    hl("@constructor", { fg = c.gray6 })

    -- Properties
    hl("@property", { fg = c.gray7 })
    hl("@label", { fg = c.fg.title })

    -- Modules
    hl("@module", { fg = c.gray7 })
    hl("@module.builtin", { fg = c.gray5 })

    -- Tags (HTML, XML, JSX)
    hl("@tag", { fg = c.gray5 })
    hl("@tag.builtin", { fg = c.gray5 })
    hl("@tag.delimiter", { fg = c.gray5 })
    hl("@tag.attribute", { fg = c.gray4 })

    -- Markup
    hl("@markup.heading", { fg = c.fg.title, bold = true })
    hl("@markup.heading.1", { fg = c.fg.title, bold = true })
    hl("@markup.heading.2", { fg = c.fg.title, bold = true })
    hl("@markup.heading.3", { fg = c.fg.title, bold = true })
    hl("@markup.heading.4", { fg = c.fg.title })
    hl("@markup.heading.5", { fg = c.fg.title })
    hl("@markup.heading.6", { fg = c.fg.title })
    hl("@markup.quote", { fg = c.gray6 })
    hl("@markup.strong", { bold = true })
    hl("@markup.italic", { italic = true })
    hl("@markup.strikethrough", { strikethrough = true })
    hl("@markup.underline", { underline = true })
    hl("@markup.link", { fg = c.gray6 })
    hl("@markup.link.label", { fg = c.gray6 })
    hl("@markup.link.url", { fg = c.gray4, underline = true })
    hl("@markup.list", { fg = c.gray4 })
    hl("@markup.list.checked", { fg = c.green })
    hl("@markup.list.unchecked", { fg = c.red })
    hl("@markup.raw", { fg = c.lack })
    hl("@markup.raw.block", { fg = c.lack })
    hl("@markup.math", { fg = c.orange })

    -- Diff
    hl("@diff.plus", { fg = c.green })
    hl("@diff.minus", { fg = c.orange })
    hl("@diff.delta", { fg = c.gray6 })

    -----------------------------------------------------------------------------
    -- LSP Semantic Tokens
    -----------------------------------------------------------------------------
    hl("@lsp.type.keyword", { link = "@keyword" })
    hl("@lsp.type.function", { link = "@function" })
    hl("@lsp.type.method", { link = "@function.method" })
    hl("@lsp.type.variable", { link = "@variable" })
    hl("@lsp.type.parameter", { link = "@variable.parameter" })
    hl("@lsp.type.property", { link = "@property" })
    hl("@lsp.type.type", { link = "@type" })
    hl("@lsp.type.class", { link = "@type" })
    hl("@lsp.type.struct", { link = "@type" })
    hl("@lsp.type.interface", { link = "@type" })
    hl("@lsp.type.enum", { link = "@type" })
    hl("@lsp.type.enumMember", { link = "@constant" })
    hl("@lsp.type.namespace", { link = "@module" })
    hl("@lsp.type.decorator", { link = "@attribute" })
    hl("@lsp.type.macro", { link = "@constant.macro" })
    hl("@lsp.type.string", { link = "@string" })
    hl("@lsp.type.number", { link = "@number" })
    hl("@lsp.type.boolean", { link = "@boolean" })
    hl("@lsp.type.operator", { link = "@operator" })
    hl("@lsp.type.comment", { link = "@comment" })

    hl("@lsp.mod.deprecated", { strikethrough = true })

    -----------------------------------------------------------------------------
    -- Diagnostics
    -----------------------------------------------------------------------------
    hl("DiagnosticError", { fg = c.red })
    hl("DiagnosticWarn", { fg = c.orange })
    hl("DiagnosticInfo", { fg = c.gray6 })
    hl("DiagnosticHint", { fg = c.gray6 })
    hl("DiagnosticOk", { fg = c.green })

    hl("DiagnosticVirtualTextError", { fg = c.red })
    hl("DiagnosticVirtualTextWarn", { fg = c.gray4 })
    hl("DiagnosticVirtualTextInfo", { fg = c.gray4 })
    hl("DiagnosticVirtualTextHint", { fg = c.gray4 })
    hl("DiagnosticVirtualTextOk", { fg = c.gray4 })

    hl("DiagnosticSignError", { fg = c.red })
    hl("DiagnosticSignWarn", { fg = c.orange })
    hl("DiagnosticSignInfo", { fg = c.gray6 })
    hl("DiagnosticSignHint", { fg = c.gray6 })
    hl("DiagnosticSignOk", { fg = c.green })

    hl("DiagnosticUnderlineError", { undercurl = true, sp = c.red })
    hl("DiagnosticUnderlineWarn", { undercurl = true, sp = c.orange })
    hl("DiagnosticUnderlineInfo", { undercurl = true, sp = c.gray6 })
    hl("DiagnosticUnderlineHint", { undercurl = true, sp = c.gray6 })
    hl("DiagnosticUnderlineOk", { undercurl = true, sp = c.green })

    hl("DiagnosticDeprecated", { strikethrough = true })
    hl("DiagnosticUnnecessary", { fg = c.gray4 })

    -----------------------------------------------------------------------------
    -- Diff
    -----------------------------------------------------------------------------
    hl("DiffAdd", { fg = c.green })
    hl("DiffChange", { fg = c.gray6 })
    hl("DiffDelete", { fg = c.orange })
    hl("DiffText", { fg = c.gray5 })
    hl("Added", { fg = c.green })
    hl("Changed", { fg = c.gray6 })
    hl("Removed", { fg = c.orange })

    -----------------------------------------------------------------------------
    -- Spell
    -----------------------------------------------------------------------------
    hl("SpellBad", { undercurl = true, sp = c.red })
    hl("SpellCap", { undercurl = true, sp = c.orange })
    hl("SpellLocal", { undercurl = true, sp = c.gray6 })
    hl("SpellRare", { undercurl = true, sp = c.gray6 })

    -----------------------------------------------------------------------------
    -- Health
    -----------------------------------------------------------------------------
    hl("healthError", { fg = c.red })
    hl("healthSuccess", { fg = c.green })
    hl("healthWarning", { fg = c.orange })

    -----------------------------------------------------------------------------
    -- Telescope
    -----------------------------------------------------------------------------
    hl("TelescopeNormal", { fg = c.gray8, bg = c.bg.main })
    hl("TelescopeBorder", { fg = c.gray7, bg = c.bg.main })
    hl("TelescopeTitle", { fg = c.fg.title })
    hl("TelescopePromptNormal", { fg = c.gray8, bg = c.bg.main })
    hl("TelescopePromptBorder", { fg = c.gray7, bg = c.bg.main })
    hl("TelescopePromptTitle", { fg = c.fg.title })
    hl("TelescopePromptPrefix", { fg = c.gray6 })
    hl("TelescopePromptCounter", { fg = c.gray7 })
    hl("TelescopeResultsNormal", { fg = c.gray5, bg = c.bg.main })
    hl("TelescopeResultsBorder", { fg = c.gray7, bg = c.bg.main })
    hl("TelescopeResultsTitle", { fg = c.fg.title })
    hl("TelescopePreviewNormal", { fg = c.black, bg = c.gray9 })
    hl("TelescopePreviewBorder", { fg = c.gray7, bg = c.gray9 })
    hl("TelescopePreviewTitle", { fg = c.fg.title })
    hl("TelescopeSelection", { bg = c.gray3 })
    hl("TelescopeSelectionCaret", { fg = c.gray7 })
    hl("TelescopeMultiSelection", { bg = c.gray3 })
    hl("TelescopeMultiIcon", { fg = c.lack })
    hl("TelescopeMatching", { fg = c.luster, bold = true })

    -----------------------------------------------------------------------------
    -- nvim-tree
    -----------------------------------------------------------------------------
    hl("NvimTreeNormal", { fg = c.gray6, bg = c.bg.main })
    hl("NvimTreeNormalNC", { fg = c.gray6, bg = c.bg.main })
    hl("NvimTreeRootFolder", { fg = c.gray5, bold = true })
    hl("NvimTreeFolderName", { fg = c.gray5 })
    hl("NvimTreeFolderIcon", { fg = c.gray5 })
    hl("NvimTreeOpenedFolderName", { fg = c.gray6 })
    hl("NvimTreeEmptyFolderName", { fg = c.gray4 })
    hl("NvimTreeSymlink", { fg = c.lack })
    hl("NvimTreeSymlinkFolderName", { fg = c.lack })
    hl("NvimTreeExecFile", { fg = c.green })
    hl("NvimTreeSpecialFile", { fg = c.lack })
    hl("NvimTreeImageFile", { fg = c.gray6 })
    hl("NvimTreeIndentMarker", { fg = c.gray3 })
    hl("NvimTreeGitDirty", { fg = c.orange })
    hl("NvimTreeGitStaged", { fg = c.green })
    hl("NvimTreeGitMerge", { fg = c.orange })
    hl("NvimTreeGitRenamed", { fg = c.gray6 })
    hl("NvimTreeGitNew", { fg = c.green })
    hl("NvimTreeGitDeleted", { fg = c.orange })
    hl("NvimTreeGitIgnored", { fg = c.gray4 })
    hl("NvimTreeWindowPicker", { fg = c.black, bg = c.lack, bold = true })
    hl("NvimTreeCursorLine", { bg = c.bg.cursorline })
    hl("NvimTreeBookmark", { fg = c.lack })

    -----------------------------------------------------------------------------
    -- Git Signs
    -----------------------------------------------------------------------------
    hl("GitSignsAdd", { fg = c.green })
    hl("GitSignsChange", { fg = c.gray6 })
    hl("GitSignsDelete", { fg = c.orange })
    hl("GitSignsCurrentLineBlame", { fg = c.gray4 })

    -----------------------------------------------------------------------------
    -- LSP
    -----------------------------------------------------------------------------
    hl("LspReferenceText", { bg = c.gray3 })
    hl("LspReferenceRead", { bg = c.gray3 })
    hl("LspReferenceWrite", { bg = c.gray3 })
    hl("LspSignatureActiveParameter", { fg = c.luster, bold = true })
    hl("LspCodeLens", { fg = c.gray4 })
    hl("LspCodeLensSeparator", { fg = c.gray4 })
    hl("LspInlayHint", { fg = c.gray4 })

    -----------------------------------------------------------------------------
    -- nvim-cmp
    -----------------------------------------------------------------------------
    hl("CmpItemAbbr", { fg = c.gray6 })
    hl("CmpItemAbbrDeprecated", { fg = c.gray4, strikethrough = true })
    hl("CmpItemAbbrMatch", { fg = c.luster, bold = true })
    hl("CmpItemAbbrMatchFuzzy", { fg = c.luster })
    hl("CmpItemKind", { fg = c.gray7 })
    hl("CmpItemMenu", { fg = c.gray5 })
    hl("CmpItemKindSnippet", { fg = c.lack })

    -----------------------------------------------------------------------------
    -- Indent guides (indent-blankline, etc.)
    -----------------------------------------------------------------------------
    hl("IndentBlanklineChar", { fg = c.gray3 })
    hl("IndentBlanklineContextChar", { fg = c.gray5 })
    hl("IblIndent", { fg = c.gray3 })
    hl("IblScope", { fg = c.gray5 })

    -----------------------------------------------------------------------------
    -- Language-specific overrides
    -----------------------------------------------------------------------------
    -- JSON, YAML, TOML
    hl("@property.json", { fg = c.gray6 })
    hl("@property.yaml", { fg = c.gray6 })
    hl("@property.toml", { fg = c.gray6 })
    hl("@type.toml", { fg = c.gray8 })

    -- XML
    hl("xmlTag", { fg = c.gray5 })
    hl("xmlTagName", { fg = c.gray5 })
    hl("xmlAttrib", { fg = c.gray4 })

    -- HTML
    hl("htmlTagName", { fg = c.gray5 })

    -- CSS
    hl("cssMediaProp", { fg = c.fg.normal })
    hl("cssTransitionProp", { fg = c.fg.normal })
    hl("cssTextProp", { fg = c.fg.normal })
    hl("cssBoxProp", { fg = c.fg.normal })
    hl("cssFontProp", { fg = c.fg.normal })
    hl("cssPositioningProp", { fg = c.fg.normal })
    hl("cssBorderProp", { fg = c.fg.normal })
    hl("cssBackgroundProp", { fg = c.fg.normal })
    hl("cssTransformProp", { fg = c.fg.normal })
    hl("@property.css", { fg = c.fg.normal })
    hl("@tag.css", { fg = c.fg.normal })

    -- Markdown
    hl("markdownCodeDelimiter", { fg = c.green })
    hl("markdownLinkDelimiter", { fg = c.gray6 })
    hl("markdownLinkTextDelimiter", { link = "@markup.link" })
    hl("markdownLinkText", { link = "@markup.link" })
    hl("markdownUrl", { link = "@markup.link.url" })

    -- SQL
    hl("sqlType", { fg = c.lack })
    hl("sqlKeyword", { fg = c.fg.keyword })
    hl("sqlStatement", { fg = c.fg.keyword })
    hl("sqlVariable", { fg = c.lack })

    -- Makefile
    hl("@string.special.symbol.make", { fg = c.lack })
    hl("makeSpecial", { fg = c.lack })

    -- Clojure/Lisp
    hl("@string.special.symbol.clojure", { fg = c.gray7 })
    hl("lispFunc", { link = "@variable.parameter" })
    hl("lispSymbol", { link = "@variable" })
    hl("lispDecl", { link = "@keyword" })

    -- Zsh
    hl("zshFunction", { fg = c.luster })

    -- Web dev icons
    hl("DevIconDefault", { fg = c.gray4 })
end

return M
