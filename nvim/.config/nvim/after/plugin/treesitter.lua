local ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not ok then
  return
end

treesitter.setup {
  ensure_installed = "all",

  autopairs = {
    enable = false,
  },

  highlight = {
    enable = true, -- false will disable the whole extension
    use_languagetree = false,
    disable = { "" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = true,
  },

  refactor = {
    highlight_definitions = { enable = true },
    highlight_current_scope = { enable = false },
  },

  indent = {
    enable = false,
    disable = { "" }
  },

  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
}

