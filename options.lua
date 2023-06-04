return {
  opt = {
    cmdheight = 1,
    wrap = true,                             -- Enable wrapping of lines longer than the width of window
    foldenable = false,
    foldexpr = "nvim_treesitter#foldexpr()", -- set Treesitter based folding
    foldmethod = "expr",
  },
  g = {
    leetcode_solution_filetype = "python3",
    leetcode_browser = "brave",
  },
}
