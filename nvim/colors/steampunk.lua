vim.opt.termguicolors = true
vim.cmd("highlight clear")

if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
    end

    vim.g.colors_name = "steampunk"
    local hl = vim.api.nvim_set_hl

    -- ============================================================
    -- Palette
    -- ============================================================
    local colors = {
        bg       = "#282828",
        fg       = "#E0CFB0",
        surface  = "#38352F",
        border   = "#50483D",
        muted    = "#928675",
        brass    = "#F3C17A",
        copper   = "#D58A5C",
        green    = "#A3B86C",
        blue     = "#83A6B8",
        red      = "#D47768",
        purple   = "#B5A0C9"
    }

    -- ============================================================
    -- Editor
    -- ============================================================
    hl(0, "Normal",       { fg = colors.fg, bg = colors.bg })
    hl(0, "NormalFloat",  { fg = colors.fg, bg = colors.surface })
    hl(0, "FloatBorder",  { fg = colors.brass, bg = colors.surface })
    hl(0, "CursorLine",   { bg = colors.surface })
    hl(0, "CursorLineNr", { fg = colors.brass, bold = true })
    hl(0, "LineNr",       { fg = colors.muted })
    hl(0, "Visual",       { bg = colors.border })
    hl(0, "Search",       { fg = colors.bg, bg = colors.brass })
    hl(0, "IncSearch",    { fg = colors.bg, bg = colors.copper })
    hl(0, "ColorColumn",  { bg = colors.surface })
    hl(0, "SignColumn",   { bg = colors.bg })
    hl(0, "Folded",       { fg = colors.muted, bg = colors.surface })
    hl(0, "NonText",      { fg = colors.border })
    hl(0, "Whitespace",   { fg = colors.border })

    -- ============================================================
    -- Window separators and statusline
    -- ============================================================
    hl(0, "WinSeparator", { fg = colors.border })
    hl(0, "StatusLine",   { fg = colors.fg, bg = colors.surface })
    hl(0, "StatusLineNC", { fg = colors.muted, bg = colors.bg })
    hl(0, "TabLine",      { fg = colors.muted, bg = colors.surface })
    hl(0, "TabLineSel",   { fg = colors.brass, bg = colors.bg, bold = true })
    hl(0, "TabLineFill",  { bg = colors.bg })

    -- ============================================================
    -- Completion menu
    -- ============================================================
    hl(0, "Pmenu",        { fg = colors.fg, bg = colors.surface })
    hl(0, "PmenuSel",     { fg = colors.bg, bg = colors.brass, bold = true })
    hl(0, "PmenuSbar",    { bg = colors.border })
    hl(0, "PmenuThumb",   { bg = colors.brass })

    -- ============================================================
    -- Traditional Vim syntax
    -- ============================================================
    hl(0, "Comment",      { fg = colors.muted, italic = true })
    hl(0, "Constant",     { fg = colors.copper })
    hl(0, "String",       { fg = colors.green })
    hl(0, "Character",    { fg = colors.green })
    hl(0, "Number",       { fg = colors.copper })
    hl(0, "Boolean",      { fg = colors.copper, bold = true })
    hl(0, "Float",        { fg = colors.copper })

    hl(0, "Identifier",   { fg = colors.blue })
    hl(0, "Function",     { fg = colors.brass, bold = true })

    hl(0, "Statement",    { fg = colors.purple })
    hl(0, "Conditional",  { fg = colors.purple })
    hl(0, "Repeat",       { fg = colors.purple })
    hl(0, "Label",        { fg = colors.brass })
    hl(0, "Operator",     { fg = colors.copper })
    hl(0, "Keyword",      { fg = colors.purple, bold = true })
    hl(0, "Exception",    { fg = colors.red })

    hl(0, "PreProc",      { fg = colors.copper })
    hl(0, "Include",      { fg = colors.purple })
    hl(0, "Define",       { fg = colors.purple })
    hl(0, "Macro",        { fg = colors.copper })

    hl(0, "Type",         { fg = colors.blue })
    hl(0, "StorageClass", { fg = colors.purple })
    hl(0, "Structure",    { fg = colors.blue })
    hl(0, "Typedef",      { fg = colors.blue })

    hl(0, "Special",      { fg = colors.brass })
    hl(0, "SpecialChar",  { fg = colors.copper })
    hl(0, "Delimiter",    { fg = colors.muted })
    hl(0, "Tag",          { fg = colors.copper })
    hl(0, "Title",        { fg = colors.brass, bold = true })

    -- ============================================================
    -- Diagnostics
    -- ============================================================
    hl(0, "DiagnosticError", { fg = colors.red })
    hl(0, "DiagnosticWarn",  { fg = colors.brass })
    hl(0, "DiagnosticInfo",  { fg = colors.blue })
    hl(0, "DiagnosticHint",  { fg = colors.green })

    hl(0, "DiagnosticUnderlineError", { undercurl = true, sp = colors.red })
    hl(0, "DiagnosticUnderlineWarn",  { undercurl = true, sp = colors.brass })
    hl(0, "DiagnosticUnderlineInfo",  { undercurl = true, sp = colors.blue })
    hl(0, "DiagnosticUnderlineHint",  { undercurl = true, sp = colors.green })

    -- ============================================================
    -- Neo-tree
    -- ============================================================
    -- General
    hl(0, "NeoTreeNormal",             { fg = colors.fg, bg = colors.bg })
    hl(0, "NeoTreeNormalNC",           { fg = colors.fg, bg = colors.bg })
    hl(0, "NeoTreeEndOfBuffer",        { fg = colors.bg })
    --hl(0, "NeoTreeFileIcon",           { fg = colors.brass })

    -- Directories
    hl(0, "NeoTreeDirectoryName",      { fg = colors.blue })
    hl(0, "NeoTreeDirectoryIcon",      { fg = colors.brass })
    hl(0, "NeoTreeRootName",           { fg = colors.brass, bold = true })

    -- Files
    hl(0, "NeoTreeFileName",           { fg = colors.fg })
    hl(0, "NeoTreeFileNameOpened",     { fg = colors.copper, bold = true })
    hl(0, "NeoTreeSymbolicLinkTarget", { fg = colors.purple, italic = true })

    -- Indentation
    hl(0, "NeoTreeIndentMarker",       { fg = colors.border })
    hl(0, "NeoTreeExpander",           { fg = colors.muted })

    -- Git status
    hl(0, "NeoTreeGitAdded",           { fg = colors.green })
    hl(0, "NeoTreeGitModified",        { fg = colors.brass })
    hl(0, "NeoTreeGitDeleted",         { fg = colors.red })
    hl(0, "NeoTreeGitRenamed",         { fg = colors.blue })
    hl(0, "NeoTreeGitUntracked",       { fg = colors.green })
    hl(0, "NeoTreeGitIgnored",         { fg = colors.muted })
    hl(0, "NeoTreeGitConflict",        { fg = colors.red, bold = true })

    -- Selection
    hl(0, "NeoTreeCursorLine",         { bg = colors.surface })
    hl(0, "NeoTreeDimText",            { fg = colors.muted })
    hl(0, "NeoTreeTitleBar",           { fg = colors.bg, bg = colors.brass, bold = true })
    hl(0, "NeoTreeFloatBorder",        { fg = colors.brass, bg = colors.surface })

    -- ============================================================
    -- Git / diff
    -- ============================================================
    hl(0, "DiffAdd",    { fg = colors.green, bg = colors.surface })
    hl(0, "DiffChange", { fg = colors.blue, bg = colors.surface })
    hl(0, "DiffDelete", { fg = colors.red, bg = colors.surface })
    hl(0, "DiffText",   { fg = colors.brass, bg = colors.border })

    -- ============================================================
    -- Miscellaneous
    -- ============================================================
    hl(0, "MatchParen", { fg = colors.brass, bold = true, underline = true })
    hl(0, "Todo",       { fg = colors.bg, bg = colors.brass, bold = true })
    hl(0, "Error",      { fg = colors.red, bold = true })
    hl(0, "ModeMsg",    { fg = colors.blue, bg = colors.bg, bold = true })
    hl(0, "MsgArea",    { fg = colors.fg, bg = colors.bg })

    -- ============================================================
    -- Generic Tree-sitter captures
    -- ============================================================
    -- Comments and documentation
    hl(0, "@comment",                { fg = colors.muted, italic = true })
    hl(0, "@comment.documentation",  { fg = colors.muted, italic = true })
    hl(0, "@comment.error",          { fg = colors.red, bold = true })
    hl(0, "@comment.warning",        { fg = colors.brass, bold = true })
    hl(0, "@comment.todo",           { fg = colors.brass, bold = true })
    hl(0, "@comment.note",           { fg = colors.blue, bold = true })

    -- Strings and embedded text
    hl(0, "@string",                 { fg = colors.green })
    hl(0, "@string.documentation",   { fg = colors.green, italic = true })
    hl(0, "@string.escape",          { fg = colors.copper })
    hl(0, "@string.regexp",          { fg = colors.copper })
    hl(0, "@string.special",         { fg = colors.copper })
    hl(0, "@string.special.symbol",  { fg = colors.copper })
    hl(0, "@string.special.url",     { fg = colors.blue, underline = true })
    hl(0, "@character",              { fg = colors.green })
    hl(0, "@character.special",      { fg = colors.copper })

    -- Numbers, constants and literals
    hl(0, "@number",                 { fg = colors.copper })
    hl(0, "@number.float",           { fg = colors.copper })
    hl(0, "@boolean",                { fg = colors.copper, bold = true })
    hl(0, "@constant",               { fg = colors.copper })
    hl(0, "@constant.builtin",       { fg = colors.copper, bold = true })
    hl(0, "@constant.macro",         { fg = colors.copper })

    -- Functions and callable objects
    hl(0, "@function",               { fg = colors.brass, bold = true })
    hl(0, "@function.call",          { fg = colors.brass })
    hl(0, "@function.builtin",       { fg = colors.brass })
    hl(0, "@function.method",        { fg = colors.brass })
    hl(0, "@function.method.call",   { fg = colors.brass })
    hl(0, "@constructor",            { fg = colors.blue, bold = true })

    -- Variables, parameters and object members
    hl(0, "@variable",               { fg = colors.fg })
    hl(0, "@variable.builtin",       { fg = colors.copper })
    hl(0, "@variable.parameter",     { fg = colors.fg })
    hl(0, "@variable.member",        { fg = colors.blue })
    hl(0, "@parameter",              { fg = colors.fg })
    hl(0, "@property",               { fg = colors.blue })
    hl(0, "@field",                  { fg = colors.blue })

    -- Types, namespaces and attributes
    hl(0, "@type",                   { fg = colors.blue })
    hl(0, "@type.builtin",           { fg = colors.blue })
    hl(0, "@type.definition",        { fg = colors.blue, bold = true })
    hl(0, "@type.qualifier",         { fg = colors.purple })
    hl(0, "@namespace",              { fg = colors.purple })
    hl(0, "@module",                 { fg = colors.purple })
    hl(0, "@attribute",              { fg = colors.copper, italic = true })
    hl(0, "@attribute.builtin",      { fg = colors.copper, bold = true })

    -- Keywords and control flow
    hl(0, "@keyword",                { fg = colors.purple, bold = true })
    hl(0, "@keyword.conditional",    { fg = colors.purple, bold = true })
    hl(0, "@keyword.repeat",         { fg = colors.purple, bold = true })
    hl(0, "@keyword.return",         { fg = colors.purple })
    hl(0, "@keyword.exception",      { fg = colors.red, bold = true })
    hl(0, "@keyword.import",         { fg = colors.copper })
    hl(0, "@keyword.directive",      { fg = colors.muted, italic = true })
    hl(0, "@keyword.operator",       { fg = colors.purple })
    hl(0, "@keyword.function",       { fg = colors.purple, bold = true })
    hl(0, "@keyword.storage",        { fg = colors.purple })
    hl(0, "@keyword.modifier",       { fg = colors.purple })
    hl(0, "@keyword.type",           { fg = colors.purple })

    -- Operators, punctuation and delimiters
    hl(0, "@operator",               { fg = colors.copper })
    hl(0, "@punctuation",            { fg = colors.muted })
    hl(0, "@punctuation.delimiter",  { fg = colors.muted })
    hl(0, "@punctuation.bracket",    { fg = colors.muted })
    hl(0, "@punctuation.special",    { fg = colors.copper })

    -- Tags, labels and markup
    hl(0, "@label",                  { fg = colors.blue })
    hl(0, "@tag",                    { fg = colors.copper })
    hl(0, "@tag.attribute",          { fg = colors.blue })
    hl(0, "@tag.delimiter",          { fg = colors.muted })

    -- Markup (Markdown and other documentation formats)
    hl(0, "@markup.heading",         { fg = colors.brass, bold = true })
    hl(0, "@markup.heading.1",       { fg = colors.brass, bold = true })
    hl(0, "@markup.heading.2",       { fg = colors.copper, bold = true })
    hl(0, "@markup.heading.3",       { fg = colors.blue, bold = true })
    hl(0, "@markup.strong",          { fg = colors.brass, bold = true })
    hl(0, "@markup.italic",          { fg = colors.fg, italic = true })
    hl(0, "@markup.strikethrough",   { fg = colors.muted, strikethrough = true })
    hl(0, "@markup.link",            { fg = colors.blue, underline = true })
    hl(0, "@markup.link.url",        { fg = colors.copper, underline = true })
    hl(0, "@markup.raw",             { fg = colors.green })
    hl(0, "@markup.raw.block",       { fg = colors.green })
    hl(0, "@markup.quote",           { fg = colors.muted, italic = true })
    hl(0, "@markup.list",            { fg = colors.copper })

    -- LSP semantic tokens
    hl(0, "@lsp.type.class",         { fg = colors.blue })
    hl(0, "@lsp.type.interface",     { fg = colors.blue, italic = true })
    hl(0, "@lsp.type.struct",        { fg = colors.blue })
    hl(0, "@lsp.type.enum",          { fg = colors.blue })
    hl(0, "@lsp.type.enumMember",    { fg = colors.copper })
    hl(0, "@lsp.type.type",          { fg = colors.blue })
    hl(0, "@lsp.type.typeParameter", { fg = colors.blue, italic = true })
    hl(0, "@lsp.type.method",        { fg = colors.brass })
    hl(0, "@lsp.type.function",      { fg = colors.brass, bold = true })
    hl(0, "@lsp.type.property",      { fg = colors.blue })
    hl(0, "@lsp.type.parameter",     { fg = colors.fg })
    hl(0, "@lsp.type.namespace",     { fg = colors.purple })
    hl(0, "@lsp.type.variable",      { fg = colors.fg })
    hl(0, "@lsp.type.keyword",       { fg = colors.purple })
    hl(0, "@lsp.type.decorator",     { fg = colors.copper, italic = true })
