local util = require 'lspconfig.util'

local root_files = {
  'pyproject.toml',
  'setup.py',
  'setup.cfg',
  'requirements.txt',
  'Pipfile',
  'pyrightconfig.json',
}

return {
  cmd = {"pyright-langserver", "--stdio"},
  filetypes = {"python"},
  root_dir = util.root_pattern(unpack(root_files)),
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
      },
    },
  }
}
