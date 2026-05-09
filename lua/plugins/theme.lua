return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    opts = {
      flavour = "mocha",
      custom_highlights = function(colors)
        return {
          -- Use a direct Hex for green (e.g., #a6e3a1 for Catppuccin Green)
          ["@lsp.type.namespace"] = { fg = "#a6e3a1", italic = true },
          ["@lsp.type.namespace.python"] = { fg = "#a6e3a1", italic = true },
          ["@module.python"] = { fg = "#a6e3a1", italic = true },

          -- Force clear the link to variable to ensure the color above wins
          -- ["@lsp.type.variable.python"] = { fg = "#b4f9f8", bold = true },
          ["@lsp.type.variable.python"] = { fg = "#cdd6f4", bold = true },

          -- -- 1. Direct highlight for Python strings
          ["@string.python"] = { fg = "#f9e2af" }, -- Mocha Peach (Orange-ish)

          -- -- 2. If you want a deeper orange, use this Hex:
          -- -- ["@string.python"] = { fg = "#fe640b" },
          --
          -- 3. Force the link to be broken if it still persists
          ["@string.documentation.python"] = { fg = "#f9e2af" },
          --
          -- -- 1. Standard Treesitter Boolean (True/False)
          ["@boolean.python"] = { fg = "#89b4fa" }, -- Catppuccin Mocha Boolean
          ["@variable.parameter.python"] = { fg = "#74c7ec", bold = true },
          ["@lsp.type.parameter.python"] = { fg = "#74c7ec", bold = true },
        }
      end,
    },
    -- ADD THIS BLOCK:
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
