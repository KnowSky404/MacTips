-- only for neovim
-- 基础设置
vim.o.number = true                      -- 显示行号
-- vim.o.relativenumber = true              -- 显示相对行号
vim.o.cursorline = true                  -- 高亮当前行
vim.o.cursorcolumn = true                -- 高亮当前列
vim.o.wrap = false                       -- 禁止自动换行
vim.o.scrolloff = 8                      -- 光标上下保留 8 行
vim.o.signcolumn = "yes"                 -- 总是显示符号列

-- 缩进
vim.o.tabstop = 2                        -- Tab 显示为 4 个空格
vim.o.shiftwidth = 2                     -- 自动缩进为 4 个空格
vim.o.expandtab = true                   -- 将 Tab 转为空格
vim.o.smartindent = true                 -- 智能缩进

-- 搜索
vim.o.ignorecase = true                  -- 搜索忽略大小写
vim.o.smartcase = true                   -- 如果包含大写字符，搜索时区分大小写
vim.o.incsearch = true                   -- 搜索时实时显示结果
vim.o.hlsearch = true                    -- 高亮搜索结果

-- 性能优化
vim.o.hidden = true                      -- 允许隐藏未保存的缓冲区
vim.o.updatetime = 300                   -- 减少编辑器响应延迟
-- vim.o.termguicolors = true               -- 启用 24 位 RGB 颜色支持
vim.o.splitbelow = true                  -- 新窗口水平分屏在下方
vim.o.splitright = true                  -- 新窗口垂直分屏在右侧

vim.cmd('syntax on')   -- 启用默认语法高亮
vim.o.clipboard = "unnamedplus" -- 使用系统的“增强剪切板”（推荐，支持更多格式）
vim.o.swapfile = false -- 禁用 swap 文件
vim.o.backup = false -- 禁用备份文件
vim.o.writebackup = false -- 禁用备份文件
vim.o.undofile = false -- 禁用 undo 文件
vim.o.statusline = "%f %y %m %= [%l:%c] [%p%%] [%{&fileformat}] [%{&fileencoding}]" -- 状态栏 文件名-文件类型-修改标志 分割 行号-列号-百分比 文件格式-文件编码
vim.cmd('colorscheme desert')
