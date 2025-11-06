local servers = { 'clangd' }
vim.lsp.enable(servers)
vim.lsp.config.clangd = {
  cmd = {
    'clangd',
    '--clang-tidy',
    '--background-index',
    '--offset-encoding=utf-8',
  },
  root_markers = { '.clangd', 'compile_commands.json' },
  filetypes = { 'c', 'cpp', 'h' },
  capabilities = {
    offsetEncoding = { 'utf-16' },
  },
}

return {
  'p00f/clangd_extensions.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim', -- Required dependency
  },
  config = function()
    require('clangd_extensions').setup {
      ast = {
        -- These are unicode, should be available in any font
        role_icons = {
          type = '🄣',
          declaration = '🄓',
          expression = '🄔',
          statement = ';',
          specifier = '🄢',
          ['template argument'] = '🆃',
        },
        kind_icons = {
          Compound = '🄲',
          Recovery = '🅁',
          TranslationUnit = '🅄',
          PackExpansion = '🄿',
          TemplateTypeParm = '🅃',
          TemplateTemplateParm = '🅃',
          TemplateParamObject = '🅃',
        },
        --[[ These require codicons (https://github.com/microsoft/vscode-codicons)
            role_icons = {
                type = "",
                declaration = "",
                expression = "",
                specifier = "",
                statement = "",
                ["template argument"] = "",
            },

            kind_icons = {
                Compound = "",
                Recovery = "",
                TranslationUnit = "",
                PackExpansion = "",
                TemplateTypeParm = "",
                TemplateTemplateParm = "",
                TemplateParamObject = "",
            }, ]]

        highlights = {
          detail = 'Comment',
        },
      },
      memory_usage = {
        border = 'none',
      },
      symbol_info = {
        border = 'none',
      },
      -- Optional configuration
    }
  end,
}
