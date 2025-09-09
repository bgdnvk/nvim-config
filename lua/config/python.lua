-- Auto-detect and use the nearest .venv/venv for Python provider
local function set_python_from_venv()
  local patterns = {
    ".venv/bin/python",
    "venv/bin/python", -- macOS/Linux
  }
  local found = vim.fs.find(patterns, {
    upward = true,
    path = vim.loop.cwd(), -- start at current dir
    stop = vim.loop.os_homedir(),
    type = "file",
  })[1]

  if found and vim.uv.fs_stat(found) then
    vim.g.python3_host_prog = found
    vim.schedule(function()
      vim.notify("Python provider: " .. found, vim.log.levels.INFO)
    end)
  end
end

-- Run on startup and whenever you :cd into another project
vim.api.nvim_create_autocmd({ "VimEnter", "DirChanged" }, {
  callback = set_python_from_venv,
  desc = "Set python3_host_prog from nearest venv",
})
