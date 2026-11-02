vim.opt.termguicolors = true
vim.cmd("highlight clear")

if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
    end

    vim.g.colors_name = "steampunk"

    -- ============================================================
    -- Palette
    -- ============================================================

    local colors = {
        bg       = "#282828",
        surface  = "#38352F",
        fg       = "#E0CFB0",
        muted    = "#928675",
        brass    = "#F3C17A",
        copper   = "#D58A5C",
        green    = "#A3B86C",
        blue     = "#83A6B8",
        red      = "#D47768",
        purple   = "#B5A0C9",
        border   = "#50483D",
    }

    local hl = vim.api.nvim_set_hl

    -- ============================================================
    -- Editor
    -- ============================================================

    hl(0, "Normal",         { fg = colors.fg, bg = colors.bg })
    hl(0, "NormalFloat",    { fg = colors.fg, bg = colors.surface })
    hl(0, "FloatBorder",    { fg = colors.brass, bg = colors.surface })
    hl(0, "CursorLine",     { bg = colors.surface })
    hl(0, "CursorLineNr",   { fg = colors.brass, bold = true })
    hl(0, "LineNr",         { fg = colors.muted })
    hl(0, "Visual",         { bg = colors.border })
    hl(0, "Search",         { fg = colors.bg, bg = colors.brass })
    hl(0, "IncSearch",      { fg = colors.bg, bg = colors.copper })
    hl(0, "ColorColumn",    { bg = colors.surface })
    hl(0, "SignColumn",     { bg = colors.bg })
    hl(0, "Folded",         { fg = colors.muted, bg = colors.surface })
    hl(0, "NonText",        { fg = colors.border })
    hl(0, "Whitespace",     { fg = colors.border })

    -- ============================================================
    -- Window separators and statusline
    -- ============================================================

    hl(0, "WinSeparator",   { fg = colors.border })
    hl(0, "StatusLine",     { fg = colors.fg, bg = colors.surface })
    hl(0, "StatusLineNC",   { fg = colors.muted, bg = colors.bg })
    hl(0, "TabLine",        { fg = colors.muted, bg = colors.surface })
    hl(0, "TabLineSel",     { fg = colors.brass, bg = colors.bg, bold = true })
    hl(0, "TabLineFill",    { bg = colors.bg })

    -- ============================================================
    -- Completion menu
    -- ============================================================

    hl(0, "Pmenu",          { fg = colors.fg, bg = colors.surface })
    hl(0, "PmenuSel",       { fg = colors.bg, bg = colors.brass, bold = true })
    hl(0, "PmenuSbar",      { bg = colors.border })
    hl(0, "PmenuThumb",     { bg = colors.brass })

    -- ============================================================
    -- Traditional Vim syntax
    -- ============================================================

    hl(0, "Comment",        { fg = colors.muted, italic = true })
    hl(0, "Constant",       { fg = colors.copper })
    hl(0, "String",         { fg = colors.green })
    hl(0, "Character",      { fg = colors.green })
    hl(0, "Number",         { fg = colors.copper })
    hl(0, "Boolean",        { fg = colors.copper, bold = true })
    hl(0, "Float",          { fg = colors.copper })

    hl(0, "Identifier",     { fg = colors.blue })
    hl(0, "Function",       { fg = colors.brass, bold = true })

    hl(0, "Statement",      { fg = colors.purple })
    hl(0, "Conditional",    { fg = colors.purple })
    hl(0, "Repeat",         { fg = colors.purple })
    hl(0, "Label",          { fg = colors.brass })
    hl(0, "Operator",       { fg = colors.copper })
    hl(0, "Keyword",        { fg = colors.purple, bold = true })
    hl(0, "Exception",      { fg = colors.red })

    hl(0, "PreProc",        { fg = colors.copper })
    hl(0, "Include",        { fg = colors.purple })
    hl(0, "Define",         { fg = colors.purple })
    hl(0, "Macro",          { fg = colors.copper })

    hl(0, "Type",           { fg = colors.blue })
    hl(0, "StorageClass",   { fg = colors.purple })
    hl(0, "Structure",      { fg = colors.blue })
    hl(0, "Typedef",        { fg = colors.blue })

    hl(0, "Special",        { fg = colors.brass })
    hl(0, "SpecialChar",    { fg = colors.copper })
    hl(0, "Delimiter",      { fg = colors.muted })
    hl(0, "Tag",            { fg = colors.copper })
    hl(0, "Title",          { fg = colors.brass, bold = true })

    -- ============================================================
    -- Diagnostics
    -- ============================================================

    hl(0, "DiagnosticError", { fg = colors.red })
    hl(0, "DiagnosticWarn",  { fg = colors.brass })
    hl(0, "DiagnosticInfo",  { fg = colors.blue })
    hl(0, "DiagnosticHint",  { fg = colors.green })

    hl(0, "DiagnosticUnderlineError",
       { undercurl = true, sp = colors.red })
    hl(0, "DiagnosticUnderlineWarn",
       { undercurl = true, sp = colors.brass })
    hl(0, "DiagnosticUnderlineInfo",
       { undercurl = true, sp = colors.blue })
    hl(0, "DiagnosticUnderlineHint",
       { undercurl = true, sp = colors.green })

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

    -- ============================================================
    -- Generic Treesitter captures
    -- ============================================================

    -- Comments
    hl(0, "@comment",               { fg = colors.muted, italic = true })
    hl(0, "@comment.documentation", { fg = colors.muted, italic = true })

    -- Strings
    hl(0, "@string",                { fg = colors.green })
    hl(0, "@string.documentation",  { fg = colors.green, italic = true })
    hl(0, "@string.escape",         { fg = colors.copper })
    hl(0, "@string.special",        { fg = colors.copper })
    hl(0, "@string.special.url",    { fg = colors.blue, underline = true })

    -- Constants
    hl(0, "@number",                { fg = colors.copper })
    hl(0, "@boolean",               { fg = colors.copper, bold = true })
    hl(0, "@constant",              { fg = colors.copper })
    hl(0, "@constant.builtin",      { fg = colors.copper, bold = true })

    -- Functions
    hl(0, "@function",              { fg = colors.brass, bold = true })
    hl(0, "@function.call",         { fg = colors.brass })
    hl(0, "@function.builtin",      { fg = colors.brass })
    hl(0, "@method",                { fg = colors.brass })
    hl(0, "@method.call",           { fg = colors.brass })
    hl(0, "@constructor",           { fg = colors.blue })

    -- Variables
    hl(0, "@variable",              { fg = colors.fg })
    hl(0, "@variable.builtin",      { fg = colors.copper })
    hl(0, "@variable.parameter",    { fg = colors.fg })
    hl(0, "@variable.member",       { fg = colors.blue })
    hl(0, "@parameter",             { fg = colors.fg })
    hl(0, "@property",              { fg = colors.blue })
    hl(0, "@field",                 { fg = colors.blue })

    -- Types
    hl(0, "@type",                  { fg = colors.blue })
    hl(0, "@type.builtin",          { fg = colors.blue })
    hl(0, "@type.definition",       { fg = colors.blue, bold = true })
    hl(0, "@namespace",              { fg = colors.purple })
    hl(0, "@module",                 { fg = colors.purple })
    hl(0, "@attribute",             { fg = colors.copper })

    -- Keywords
    hl(0, "@keyword",               { fg = colors.purple, bold = true })
    hl(0, "@keyword.return",        { fg = colors.purple })
    hl(0, "@keyword.exception",     { fg = colors.red })
    hl(0, "@keyword.import",        { fg = colors.copper })
    hl(0, "@keyword.directive",     { fg = colors.copper })

    -- Operators and punctuation
    hl(0, "@operator",              { fg = colors.copper })
    hl(0, "@punctuation.delimiter", { fg = colors.muted })
    hl(0, "@punctuation.bracket",   { fg = colors.muted })
    hl(0, "@punctuation.special",   { fg = colors.copper })

    -- Other
    hl(0, "@label",                 { fg = colors.blue })
    hl(0, "@exception",             { fg = colors.red, bold = true })
    hl(0, "@tag",                   { fg = colors.copper })
    hl(0, "@tag.attribute",         { fg = colors.blue })
    hl(0, "@tag.delimiter",         { fg = colors.muted })

    -- ============================================================
    -- C# / C Sharp
    -- ============================================================

    hl(0, "@type.cs",               { fg = colors.blue })
    hl(0, "@type.builtin.cs",       { fg = colors.blue })
    hl(0, "@function.cs",           { fg = colors.brass, bold = true })
    hl(0, "@method.cs",             { fg = colors.brass })
    hl(0, "@property.cs",           { fg = colors.blue })
    hl(0, "@variable.cs",           { fg = colors.fg })
    hl(0, "@constant.cs",            { fg = colors.copper })
    hl(0, "@attribute.cs",          { fg = colors.copper })
    hl(0, "@string.cs",             { fg = colors.green })
    hl(0, "@number.cs",             { fg = colors.copper })
    hl(0, "@comment.cs",            { fg = colors.muted, italic = true })

    -- C# semantic tokens
    hl(0, "@lsp.type.class",        { fg = colors.blue })
    hl(0, "@lsp.type.interface",    { fg = colors.blue, italic = true })
    hl(0, "@lsp.type.struct",       { fg = colors.blue })
    hl(0, "@lsp.type.enum",         { fg = colors.blue })
    hl(0, "@lsp.type.enumMember",   { fg = colors.copper })
    hl(0, "@lsp.type.method",       { fg = colors.brass })
    hl(0, "@lsp.type.function",     { fg = colors.brass, bold = true })
    hl(0, "@lsp.type.property",     { fg = colors.blue })
    hl(0, "@lsp.type.parameter",    { fg = colors.fg })
    hl(0, "@lsp.type.namespace",    { fg = colors.purple })
    hl(0, "@lsp.type.variable",     { fg = colors.fg })
    hl(0, "@lsp.type.keyword",      { fg = colors.purple })
    hl(0, "@lsp.type.decorator",    { fg = colors.copper })

    -- ============================================================
    -- Python
    -- ============================================================

    hl(0, "@module.python",             { fg = colors.purple })
    hl(0, "@variable.python",           { fg = colors.fg })
    hl(0, "@variable.builtin.python",   { fg = colors.copper })

    hl(0, "@function.python",           { fg = colors.brass, bold = true })
    hl(0, "@function.call.python",      { fg = colors.brass })
    hl(0, "@method.python",             { fg = colors.brass })
    hl(0, "@constructor.python",        { fg = colors.blue })

    hl(0, "@class.python",              { fg = colors.blue, bold = true })
    hl(0, "@type.python",               { fg = colors.blue })
    hl(0, "@type.builtin.python",       { fg = colors.blue })
    hl(0, "@attribute.python",          { fg = colors.blue })

    hl(0, "@keyword.python",            { fg = colors.purple, bold = true })
    hl(0, "@keyword.import.python",     { fg = colors.copper })
    hl(0, "@keyword.return.python",     { fg = colors.purple })
    hl(0, "@keyword.exception.python",  { fg = colors.red })

    hl(0, "@string.python",             { fg = colors.green })
    hl(0, "@string.documentation.python",
       { fg = colors.green, italic = true })
    hl(0, "@number.python",             { fg = colors.copper })
    hl(0, "@boolean.python",            { fg = colors.copper, bold = true })
    hl(0, "@constant.builtin.python",   { fg = colors.copper })

    hl(0, "@operator.python",           { fg = colors.copper })
    hl(0, "@punctuation.python",        { fg = colors.muted })
    hl(0, "@comment.python",            { fg = colors.muted, italic = true })
    hl(0, "@function.decorator.python",
       { fg = colors.copper, italic = true })
    hl(0, "@exception.python",          { fg = colors.red, bold = true })

    -- ============================================================
    -- JavaScript
    -- ============================================================

    hl(0, "@function.javascript",       { fg = colors.brass, bold = true })
    hl(0, "@function.call.javascript",  { fg = colors.brass })
    hl(0, "@method.javascript",         { fg = colors.brass })
    hl(0, "@type.javascript",           { fg = colors.blue })
    hl(0, "@property.javascript",       { fg = colors.blue })
    hl(0, "@variable.javascript",       { fg = colors.fg })
    hl(0, "@constant.javascript",       { fg = colors.copper })
    hl(0, "@keyword.javascript",        { fg = colors.purple, bold = true })
    hl(0, "@string.javascript",         { fg = colors.green })

    -- ============================================================
    -- TypeScript
    -- ============================================================

    hl(0, "@function.typescript",       { fg = colors.brass, bold = true })
    hl(0, "@function.call.typescript",  { fg = colors.brass })
    hl(0, "@method.typescript",         { fg = colors.brass })
    hl(0, "@type.typescript",           { fg = colors.blue })
    hl(0, "@type.builtin.typescript",   { fg = colors.blue })
    hl(0, "@interface.typescript",      { fg = colors.blue, italic = true })
    hl(0, "@property.typescript",       { fg = colors.blue })
    hl(0, "@variable.typescript",       { fg = colors.fg })
    hl(0, "@constant.typescript",       { fg = colors.copper })
    hl(0, "@keyword.typescript",        { fg = colors.purple, bold = true })
    hl(0, "@string.typescript",         { fg = colors.green })

    -- ============================================================
    -- HTML
    -- ============================================================

    hl(0, "@tag.html",                  { fg = colors.copper })
    hl(0, "@tag.attribute.html",       { fg = colors.blue })
    hl(0, "@tag.delimiter.html",       { fg = colors.muted })
    hl(0, "@string.html",               { fg = colors.green })

    -- ============================================================
    -- XML
    -- ============================================================

    hl(0, "@tag.xml",                   { fg = colors.copper })
    hl(0, "@tag.attribute.xml",        { fg = colors.blue })
    hl(0, "@tag.delimiter.xml",        { fg = colors.muted })
    hl(0, "@string.xml",                { fg = colors.green })

    -- ============================================================
    -- CSS / SCSS
    -- ============================================================

    hl(0, "@property.css",              { fg = colors.blue })
    hl(0, "@property.scss",             { fg = colors.blue })
    hl(0, "@type.css",                  { fg = colors.copper })
    hl(0, "@type.scss",                 { fg = colors.copper })
    hl(0, "@function.css",              { fg = colors.brass })
    hl(0, "@function.scss",             { fg = colors.brass })
    hl(0, "@string.css",                { fg = colors.green })
    hl(0, "@number.css",                { fg = colors.copper })
    hl(0, "@constant.css",              { fg = colors.copper })
    hl(0, "@operator.css",               { fg = colors.purple })
    hl(0, "@keyword.css",                { fg = colors.purple })

    -- ============================================================
    -- JSON
    -- ============================================================

    hl(0, "@property.json",             { fg = colors.blue })
    hl(0, "@string.json",               { fg = colors.green })
    hl(0, "@number.json",               { fg = colors.copper })
    hl(0, "@boolean.json",              { fg = colors.copper, bold = true })
    hl(0, "@constant.json",             { fg = colors.copper })

    -- ============================================================
    -- YAML
    -- ============================================================

    hl(0, "@property.yaml",             { fg = colors.blue })
    hl(0, "@string.yaml",               { fg = colors.green })
    hl(0, "@number.yaml",               { fg = colors.copper })
    hl(0, "@constant.yaml",             { fg = colors.copper })
    hl(0, "@boolean.yaml",              { fg = colors.copper, bold = true })
    hl(0, "@punctuation.yaml",          { fg = colors.muted })

    -- ============================================================
    -- TOML
    -- ============================================================

    hl(0, "@property.toml",             { fg = colors.blue })
    hl(0, "@string.toml",               { fg = colors.green })
    hl(0, "@number.toml",               { fg = colors.copper })
    hl(0, "@boolean.toml",              { fg = colors.copper, bold = true })
    hl(0, "@type.toml",                 { fg = colors.brass })

    -- ============================================================
    -- SQL
    -- ============================================================

    hl(0, "@keyword.sql",               { fg = colors.purple, bold = true })
    hl(0, "@type.sql",                  { fg = colors.blue })
    hl(0, "@function.sql",              { fg = colors.brass })
    hl(0, "@function.builtin.sql",      { fg = colors.brass, bold = true })
    hl(0, "@constant.sql",              { fg = colors.copper })
    hl(0, "@string.sql",                { fg = colors.green })
    hl(0, "@number.sql",                { fg = colors.copper })
    hl(0, "@variable.sql",              { fg = colors.blue })
    hl(0, "@operator.sql",              { fg = colors.copper })

    -- ============================================================
    -- Bash / Shell
    -- ============================================================

    hl(0, "@function.bash",             { fg = colors.brass, bold = true })
    hl(0, "@variable.bash",             { fg = colors.blue })
    hl(0, "@variable.builtin.bash",     { fg = colors.copper })
    hl(0, "@keyword.bash",              { fg = colors.purple, bold = true })
    hl(0, "@string.bash",               { fg = colors.green })
    hl(0, "@constant.bash",             { fg = colors.copper })
    hl(0, "@operator.bash",             { fg = colors.copper })
    hl(0, "@comment.bash",              { fg = colors.muted, italic = true })

    -- ============================================================
    -- Lua
    -- ============================================================

    hl(0, "@function.lua",              { fg = colors.brass, bold = true })
    hl(0, "@function.call.lua",         { fg = colors.brass })
    hl(0, "@keyword.lua",               { fg = colors.purple, bold = true })
    hl(0, "@type.lua",                  { fg = colors.blue })
    hl(0, "@variable.lua",              { fg = colors.fg })
    hl(0, "@variable.builtin.lua",      { fg = colors.copper })
    hl(0, "@field.lua",                 { fg = colors.blue })
    hl(0, "@property.lua",              { fg = colors.blue })
    hl(0, "@string.lua",                { fg = colors.green })
    hl(0, "@number.lua",                { fg = colors.copper })

    -- ============================================================
    -- Markdown
    -- ============================================================

    hl(0, "@markup.heading",            { fg = colors.brass, bold = true })
    hl(0, "@markup.heading.1",          { fg = colors.brass, bold = true })
    hl(0, "@markup.heading.2",          { fg = colors.copper, bold = true })
    hl(0, "@markup.heading.3",          { fg = colors.blue, bold = true })
    hl(0, "@markup.strong",             { fg = colors.brass, bold = true })
    hl(0, "@markup.italic",             { fg = colors.fg, italic = true })
    hl(0, "@markup.strikethrough",      { fg = colors.muted, strikethrough = true })
    hl(0, "@markup.link",               { fg = colors.blue, underline = true })
    hl(0, "@markup.link.url",           { fg = colors.copper, underline = true })
    hl(0, "@markup.raw",                { fg = colors.green })
    hl(0, "@markup.raw.block",          { fg = colors.green })
    hl(0, "@markup.quote",              { fg = colors.muted, italic = true })
    hl(0, "@markup.list",               { fg = colors.copper })

    -- ============================================================
    -- Dockerfile
    -- ============================================================

    hl(0, "@keyword.dockerfile",        { fg = colors.purple, bold = true })
    hl(0, "@string.dockerfile",         { fg = colors.green })
    hl(0, "@variable.dockerfile",       { fg = colors.blue })
    hl(0, "@comment.dockerfile",        { fg = colors.muted, italic = true })

    -- ============================================================
    -- C
    -- ============================================================

    hl(0, "@function.c",                { fg = colors.brass, bold = true })
    hl(0, "@type.c",                    { fg = colors.blue })
    hl(0, "@type.builtin.c",            { fg = colors.blue })
    hl(0, "@variable.c",                { fg = colors.fg })
    hl(0, "@constant.c",                { fg = colors.copper })
    hl(0, "@keyword.c",                 { fg = colors.purple, bold = true })
    hl(0, "@string.c",                  { fg = colors.green })
    hl(0, "@preproc.c",                 { fg = colors.copper })

    -- ============================================================
    -- C++
    -- ============================================================

    hl(0, "@function.cpp",              { fg = colors.brass, bold = true })
    hl(0, "@method.cpp",                { fg = colors.brass })
    hl(0, "@type.cpp",                  { fg = colors.blue })
    hl(0, "@type.builtin.cpp",          { fg = colors.blue })
    hl(0, "@variable.cpp",              { fg = colors.fg })
    hl(0, "@constant.cpp",              { fg = colors.copper })
    hl(0, "@keyword.cpp",               { fg = colors.purple, bold = true })
    hl(0, "@string.cpp",                { fg = colors.green })
    hl(0, "@namespace.cpp",             { fg = colors.purple })

    -- ============================================================
    -- Rust
    -- ============================================================

    hl(0, "@function.rust",             { fg = colors.brass, bold = true })
    hl(0, "@method.rust",               { fg = colors.brass })
    hl(0, "@type.rust",                 { fg = colors.blue })
    hl(0, "@type.builtin.rust",         { fg = colors.blue })
    hl(0, "@variable.rust",             { fg = colors.fg })
    hl(0, "@constant.rust",             { fg = colors.copper })
    hl(0, "@keyword.rust",              { fg = colors.purple, bold = true })
    hl(0, "@string.rust",               { fg = colors.green })
    hl(0, "@attribute.rust",            { fg = colors.copper })

    -- ============================================================
    -- Go
    -- ============================================================

    hl(0, "@function.go",               { fg = colors.brass, bold = true })
    hl(0, "@method.go",                 { fg = colors.brass })
    hl(0, "@type.go",                   { fg = colors.blue })
    hl(0, "@variable.go",               { fg = colors.fg })
    hl(0, "@constant.go",               { fg = colors.copper })
    hl(0, "@keyword.go",                { fg = colors.purple, bold = true })
    hl(0, "@string.go",                 { fg = colors.green })
    hl(0, "@namespace.go",              { fg = colors.purple })

    -- ============================================================
    -- Java
    -- ============================================================

    hl(0, "@function.java",             { fg = colors.brass, bold = true })
    hl(0, "@method.java",               { fg = colors.brass })
    hl(0, "@type.java",                 { fg = colors.blue })
    hl(0, "@type.builtin.java",         { fg = colors.blue })
    hl(0, "@variable.java",             { fg = colors.fg })
    hl(0, "@constant.java",             { fg = colors.copper })
    hl(0, "@keyword.java",              { fg = colors.purple, bold = true })
    hl(0, "@string.java",               { fg = colors.green })
    hl(0, "@annotation.java",           { fg = colors.copper })

    -- ============================================================
    -- PHP
    -- ============================================================

    hl(0, "@function.php",              { fg = colors.brass, bold = true })
    hl(0, "@method.php",                { fg = colors.brass })
    hl(0, "@type.php",                  { fg = colors.blue })
    hl(0, "@variable.php",              { fg = colors.blue })
    hl(0, "@constant.php",              { fg = colors.copper })
    hl(0, "@keyword.php",               { fg = colors.purple, bold = true })
    hl(0, "@string.php",                { fg = colors.green })
    hl(0, "@property.php",              { fg = colors.blue })

    -- ============================================================
    -- Ruby
    -- ============================================================

    hl(0, "@function.ruby",             { fg = colors.brass, bold = true })
    hl(0, "@method.ruby",               { fg = colors.brass })
    hl(0, "@type.ruby",                 { fg = colors.blue })
    hl(0, "@variable.ruby",             { fg = colors.fg })
    hl(0, "@constant.ruby",             { fg = colors.copper })
    hl(0, "@keyword.ruby",              { fg = colors.purple, bold = true })
    hl(0, "@string.ruby",               { fg = colors.green })
    hl(0, "@symbol.ruby",               { fg = colors.copper })

    -- ============================================================
    -- INI / DOSINI
    -- ============================================================
    hl(0, "dosiniLabel", { fg = colors.brass })
    hl(0, "dosiniValue", { fg = colors.green })
    hl(0, "dosiniHeader", { fg = colors.copper, bold = true })
    hl(0, "dosiniComment", { fg = colors.muted, italic = true })

    -- ============================================================
    -- Messages and mode indicators
    -- ============================================================

    vim.api.nvim_set_hl(0, "ModeMsg", {
        fg = colors.blue,
        bg = colors.bg,
        bold = true,
    })

    vim.api.nvim_set_hl(0, "MsgArea", {
        fg = colors.fg,
        bg = colors.bg,
    })
