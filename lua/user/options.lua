--> OPTIONS NVIM EDITOR

local options = {
  -- numbers
  number = true,
  relativenumber = true,
  -- background color
  termguicolors = true,
  -- archive
  swapfile = false,
  backup = false,
  writebackup = false,
  -- others
  wrap = false,
  hlsearch = true,
  ignorecase = true,
  showmode = false,
  smartcase = true,
  smartindent = true,
  splitbelow = true,
  splitright = true,
  undofile = true,
  expandtab = true,
  signcolumn = "yes",
  fileencoding = "utf-8",
  clipboard = "unnamedplus",
  completeopt = { "menuone", "noselect"},
  numberwidth = 1,
  tabstop = 2,
  shiftwidth = 2,
  updatetime = 300,
  timeoutlen = 100,
  showtabline = 2,
  pumheight = 10,
  conceallevel = 0,
  cmdheight = 1,
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
vim.cmd [[set formatoptions-=cro]] -- TODO: this doesn't seem to work
