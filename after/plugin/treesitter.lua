require("nvim-treesitter").setup()

require("nvim-treesitter").install({
  "c",
  "cpp",
  "python",
  "html",
  "json",
  "matlab",
  "lua",
  "bash",
  "csv",
  "git_config",
  "gnuplot",
  "vim",
  "vimdoc",
  "latex",
  "markdown",
  "markdown_inline",
})

vim.api.nvim_create_autocmd("FileType", {
  callback = function(args)
    local lang = vim.treesitter.language.get_lang(vim.bo[args.buf].filetype)
    if not lang then
      return
    end
    -- Skip if no parser is actually installed for this language
    if not vim.treesitter.language.add(lang) then
      return
    end
    pcall(vim.treesitter.start, args.buf, lang)
  end,
})
