return {
  "nvim-telescope/telescope.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  keys = {
    { "<leader>pf", "<cmd>Telescope find_files<cr>", desc = "Find files" },
    { "<C-p", "<cmd>Telescope git_files<cr>", desc = "Find git files" },
    { "<leader>ps", function()
        require("telescope.builtin").grep_string({ search = vim.fn.input("Grep > ") }) 
    end, desc = "Grep string", },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>",  desc = "Live grep" },
    { "<leader>fb", "<cmd>Telescope buffers<cr>",    desc = "Buffers" },
    { "<leader>fh", "<cmd>Telescope help_tags<cr>",  desc = "Help tags" },
  },
  config = function()
    local telescope = require("telescope")
    telescope.setup({})
    telescope.load_extension("fzf")
  end,
}
