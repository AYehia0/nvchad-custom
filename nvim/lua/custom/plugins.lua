local plugins = {
    {
        "nvim-lspconfig",
        config = function()
            require("plugins.configs.lspconfig")
            require("custom.configs.lspconfig")
        end
    },
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "eslint-lsp",
            }
        }
    },
    {
        "iamcco/markdown-preview.nvim",
        run = "cd app && npm install",
        setup = function()
            vim.g.mkdp_filetypes = { "markdown" }
        end,
        ft = { "markdown" },
    },
    {
        "christoomey/vim-tmux-navigator",
        lazy = false
    },
    {
        "fatih/vim-go",
        ft = { "go" },
    },
    ["kyazdani42/nvim-tree.lua"] = {
        override_options = {
            open_on_setup = true,
            hijack_directories = {
                enable = true,
                auto_open = true,
            },
            -- update_cwd = true,
        },
    },
}

return plugins
