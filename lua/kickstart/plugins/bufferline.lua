return {
    'akinsho/bufferline.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        require("bufferline").setup({
        options = {
            mode = "buffers", -- or "tabs" for actual Neovim tabs
            numbers = "none", -- or "ordinal", "buffer_id", "both"
            indicator = {
                icon = '▎',
                style = 'icon',
            },
            buffer_close_icon = '✗',
            modified_icon = '●',
            close_icon = '✗',
            left_trunc_marker = '',
            right_trunc_marker = '',
            max_name_length = 14,
            max_prefix_length = 13,
            tab_size = 18,
            diagnostics = "nvim_lsp", -- or "coc", "default"
            offsets = {{
                filetype = "NvimTree",
                text = "File Explorer",
                text_align = "left",
                separator = true
            }},
            show_buffer_close_icons = true,
            show_close_icon = true,
            show_tab_indicators = true,
            sort_by = "insert_after_current",
        }
    })
    end,
}
