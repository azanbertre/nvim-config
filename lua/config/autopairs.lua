require("nvim-autopairs").setup({
  enable_check_bracket_line = true,
  ignored_next_char = "[%w%.]",
  check_ts = true,
  ts_config = {
    lua = { "string" },
    javascript = { "template_string" },
    java = false,
  },
})
