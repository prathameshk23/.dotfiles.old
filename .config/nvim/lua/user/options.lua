local options = {
  -- Indentation
  tabstop = 2,
  shiftwidth = 2,
  expandtab = true,
  smarttab = true,

  -- Search
  ignorecase = true,
  smartcase = true,
  hlsearch = false,

  -- User Interface
  splitbelow = true,
  splitright = true,
  relativenumber = true,
  cursorline = true,
  title = true,

  -- Text Rendering
  scrolloff = 1,
  wrap = true,
  linebreak = true,

  -- Misc
  clipboard = "unnamedplus",
  confirm = true,
}

for key, value in pairs(options) do
  vim.opt[key] = value
end
