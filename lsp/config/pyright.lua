local util = require "lspconfig/util"

return {
  root_dir = function(fname)
    return util.root_pattern(
      ".git",
      "setup.py",
      "setup.cfg",
      "pyproject.toml",
      "requirements.txt",
      -- "environment.yaml",
      "settings.py"
    )(fname) or util.path.dirname(fname)
  end,
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        diagnosticMode = "workspace",
        useLibraryCodeForTypes = true,
        typeCheckingMode = "off",
        extraPaths = { "/Users/tricao/project/intrepid-airflow/dags" },
      },
    },
  },
}
