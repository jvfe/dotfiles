vim.g.mapleader = " "

-- move block down/up
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- collapse next line with current
vim.keymap.set("n", "J", "mzJ`z")
-- go down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
-- go up
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- toggle through find
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste over text without yanking it
vim.keymap.set("x", "<leader>p", [["_dP]])

-- yank to clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
-- yank current line to clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- delete to void buffer
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- never do anything with the accursed Q
vim.keymap.set("n", "Q", "<nop>")
-- format file
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- substite expression and show it
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- make current buffer executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- open packer config
vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/jvfe/packer.lua<CR>");

vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

-- source buffer
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
