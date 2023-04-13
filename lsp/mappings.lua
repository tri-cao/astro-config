return {
  n = {
    ["K"] = {
      function() vim.lsp.buf.hover() end,
      desc = "hover",
    },
    ["gr"] = {
      function() require("telescope.builtin").lsp_references() end,
      desc = "lsp references",
    },
    ["gd"] = {
      function() require("telescope.builtin").lsp_definitions() end,
      desc = "lsp definitions",
    },
    ["gi"] = {
      function() require("telescope.builtin").lsp_implementations() end,
      desc = "telescope lsp_implementation",
    },
  },
}
