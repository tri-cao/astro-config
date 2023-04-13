return {
  i = {},
  n = {
    ["<A-;>"] = {
      "<cmd> lua if vim.api.nvim_get_current_line():sub(-1) ~= ';' then vim.api.nvim_set_current_line(vim.api.nvim_get_current_line() .. ';') elseif vim.api.nvim_get_current_line():sub(-1) == ';' then vim.api.nvim_set_current_line(vim.api.nvim_get_current_line():sub(0, -2)) end <CR>",
      desc = "Add or remove semi colon add the end of line",
    },
    ["<leader>fg"] = {
      "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>",
      desc = "live grep args",
    },
    ["<A-i>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
    ["<C-_>"] = {
      function() require("Comment.api").toggle.linewise.current() end,
      desc = "toggle comment",
    },
    ["<leader>fq"] = { "<cmd> Telescope quickfix <CR>", desc = "telescope quickfix list" },
    ["<leader>gg"] = { '<cmd> lua require("neogit").open({ kind = "split" }) <CR>', desc = "open neogit" },
    -- ["<leader>ln"] = { '<cmd> lua require("neogen").generate() <CR>', desc = "generate docs with neogen" },
    -- ["<leader>lc"] = { "<cmd> Cheat <CR>", desc = "query cheat sheet" },

    ["<leader>tf"] = { function() astronvim.toggle_term_cmd "lf" end, desc = "ToggleTerm lf" },
  },
  t = {
    ["<A-i>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
  },
  v = {
    ["<C-_>"] = {
      "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
      desc = "toggle comment",
    },
  },
}
