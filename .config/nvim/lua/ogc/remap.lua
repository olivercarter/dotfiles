vim.g.mapleader = " "
vim.keymap.set("n", "<leader>df", ':Explore<return>')

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
--vim.keymap.set("n", "n", "nzzzv")
--vim.keymap.set("n", "N", "Nzzzv")
--vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")

--vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
--vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- New tab
vim.keymap.set('n', 'te', ':tabedit')
-- Split window
vim.keymap.set('n', 'ss', ':split<Return><C-w>w')
vim.keymap.set('n', 'sv', ':vsplit<Return><C-w>w')
-- Move window
--vim.keymap.set('n', '<Space>', '<C-w>w')
vim.keymap.set('', 'sh', '<C-w>h')
vim.keymap.set('', 'sk', '<C-w>k')
vim.keymap.set('', 'sj', '<C-w>j')
vim.keymap.set('', 'sl', '<C-w>l')

-- Delete a word backwards
--vim.keymap.set('n', 'dw', 'vb"_d')

--save--
--vim.keymap.set('n', '\\\\',':w<return>')
--vim.keymap.set('n', '||',':q<return>')

vim.keymap.set('i','<C-b>','<C-o>h') 
vim.keymap.set('i','<C-f>','<C-o>l')
vim.keymap.set('i','<C-n>','<C-o>j')
vim.keymap.set('i','<C-p>','<C-o>k')

vim.keymap.set('n','<C-n>','dh')

vim.keymap.set('n','<leader>w', ':w<return>')
vim.keymap.set('n','<leader>q', ':q<return>')
vim.keymap.set('n','<leader>q\\', ':q!<return>')

-- Resize window
vim.keymap.set('n','<leader>l', ':vertical resize +5<return>')
vim.keymap.set('n','<leader>h', ':vertical resize -5<return>')
vim.keymap.set('n','<leader>j', ':horizontal resize +5<return>')
vim.keymap.set('n','<leader>k', ':horizontal resize -5<return>')
vim.keymap.set('n', 'sh', '<C-w><')
vim.keymap.set('n', 'sl', '<C-w>>')
vim.keymap.set('n', 'sk', '<C-w>+')
vim.keymap.set('n', 'sj', '<C-w>-')

vim.cmd "noremap <C-h> <C-w>h"
vim.cmd "noremap <C-j> <C-w>j"
vim.cmd "noremap <C-k> <C-w>k"
vim.cmd "noremap <C-l> <C-w>l"

--vim.cmd "let g:tmux_navigator_no_mappings = 1

--vim.cmd "noremap <silent> {Left-Mapping} :<C-U>TmuxNavigateLeft<cr>"
--vim.cmd "noremap <silent> {Down-Mapping} :<C-U>TmuxNavigateDown<cr>"
--vim.cmd "noremap <silent> {Up-Mapping} :<C-U>TmuxNavigateUp<cr>"
--vim.cmd "noremap <silent> {Right-Mapping} :<C-U>TmuxNavigateRight<cr>"
--vim.cmd "noremap <silent> {Previous-Mapping} :<C-U>TmuxNavigatePrevious<cr>"
