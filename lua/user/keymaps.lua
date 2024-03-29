local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)


-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)
keymap("n", "ZZ", ":qal<CR>", opts)

-- open terminal
keymap("n", "<S-F5>", ":FloatermNew --position=bottomright<cr>", opts)
keymap("n", "<F5>", ":FloatermToggle<cr>", opts)
-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
-- buffer manage
keymap("n", "<leader>bd", ":Bdelete<CR>", opts)
-- quick save
keymap("n", "<leader>w", ":w<CR>", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "jk", "<c-\\><C-N>", term_opts)
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- Plugins --
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)
keymap("n", "<leader>t", ":Telescope find_files<cr>", opts)
keymap("n", "<leader>f", ":Format<cr>", opts)
keymap("n", "<leader>v", ":SymbolsOutline<cr>", opts)
keymap("n", "<leader>1", ":BufferLineGoToBuffer 1<cr>", opts)
keymap("n", "<leader>2", ":BufferLineGoToBuffer 2<cr>", opts)
keymap("n", "<leader>3", ":BufferLineGoToBuffer 3<cr>", opts)
keymap("n", "<leader>4", ":BufferLineGoToBuffer 4<cr>", opts)
keymap("n", "<leader>5", ":BufferLineGoToBuffer 5<cr>", opts)
keymap("n", "<leader>6", ":BufferLineGoToBuffer 6<cr>", opts)
keymap("n", "<leader>7", ":BufferLineGoToBuffer 7<cr>", opts)
keymap("n", "<leader>8", ":BufferLineGoToBuffer 8<cr>", opts)
keymap("n", "<leader>9", ":BufferLineGoToBuffer 9<cr>", opts)
--- for quick save possesion
-- local session_name = os.getenv("pwd")
-- local session_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
function get_session_name()
    output = vim.api.nvim_command_output("pwd")
    return string.match(output, "[^/]*$")
end
-- local status_ok, session_name = pcall(vim.cmd, "pwd")
keymap("n", "<leader>ss", ":PossessionSave " .. get_session_name() .. "<cr>", opts)
keymap("n", "<leader>sl", ":Telescope possession list <cr>", opts)
--- better buffer delete
keymap("n", "<leader>d", ":Bdelete<cr>", opts)
--- quick quit
keymap("n", "<leader>q", ":q<cr>", opts)
-- better yanking
keymap("v", "<leader>c", ":OSCYank<cr>", opts)
-- quick jump
keymap("n", "<leader>s", ":HopWord<cr>", opts)
