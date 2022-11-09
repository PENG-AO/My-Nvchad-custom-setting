-- additional settings and custom plugins

local M = {}

M.plugins = {
	-- line number toggle
    ["sitiom/nvim-numbertoggle"] = {
        config = function ()
            require("numbertoggle").setup()
        end
    },

    -- markdown preview
    ["iamcco/markdown-preview.nvim"] = {
        ft = {"markdown"},
        run = "cd app && yarn install",
    },

    -- language server protocal (lsp)
    ["neovim/nvim-lspconfig"] = {
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.lspconfig"
        end,
    },

    -- preinstalled formatter list
    ["nvim-treesitter/nvim-treesitter"] = {
        override_options = {
            ensure_installed = {
                "c", "cpp",
                "python",
                "lua",
                "rust",
                "html", "css", "scss",
                "markdown",
            },
        },
    },

    -- preinstalled lsp list
    ["williamboman/mason.nvim"] = {
        override_options = {
            ensure_installed = {
                "clangd", -- c & cpp
                "pyright", -- python
                "lua-language-server", -- lua
                "rust-analyzer", -- rust
                "html-lsp", "css-lsp", -- html & css
                "ltex-ls", -- latex & markdown
            },
        },
    },

    ["kyazdani42/nvim-tree.lua"] = {
        override_options = {
            git = { enable = true, },
            renderer = {
                highlight_git = true,
                icons = {
                    show = { git = true, },
                },
            },
            view = { side = "left", },
        },
    },
}

M.ui = {
    theme = "nord",
}

return M
