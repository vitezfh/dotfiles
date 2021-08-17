 local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local opt = {}

-- dont copy any deleted text , this is disabled by default so uncomment the below mappings if you want them!
--[[ remove this line

map("n", "dd", [=[ "_dd ]=], opt)
map("v", "dd", [=[ "_dd ]=], opt)
map("v", "x", [=[ "_x ]=], opt)

 this line too ]]
-- OPEN TERMINALS --
map("n", "<C-l>", [[<Cmd>vnew term://zsh <CR>]], opt) -- term over right
map("n", "<C-x>", [[<Cmd> split term://zsh | resize 10 <CR>]], opt) --  term bottom
map("n", "<C-t>t", [[<Cmd> tabnew | term <CR>]], opt) -- term newtab

-- COPY EVERYTHING --
map("n", "<C-a>", [[ <Cmd> %y+<CR>]], opt)

-- toggle numbers ---
map("n", "<leader>n", [[ <Cmd> set nu!<CR>]], opt)

-- toggle truezen.nvim's ataraxis and minimalist mode
map("n", "<leader>u", [[ <Cmd> TZAtaraxis<CR>]], opt)
map("n", "<leader>m", [[ <Cmd> TZMinimalist<CR>]], opt)

map("n", "<C-s>", [[ <Cmd> w <CR>]], opt)
-- vim.cmd("inoremap jh <Esc>")

-- Vertically center
map("n", "<leader>zz", ":let &scrolloff=999-&scrolloff<CR>", {noremap = true})


map("n", "<leader>mm", ":lua require('material.functions').toggle_style()<CR>", {noremap = true})

-- Commenter Keybinding
map("n", "<leader>/", ":CommentToggle<CR>", {noremap = true, silent = true})
map("v", "<leader>/", ":CommentToggle<CR>", {noremap = true, silent = true})

-- Nuke evil arrow keys
map("", "<up>", "<nop>", {noremap = true, silent = true})
map("", "<down>", "<nop>", {noremap = true, silent = true})
map("", "<left>", "<nop>", {noremap = true, silent = true})
map("", "<right>", "<nop>", {noremap = true, silent = true})

-- bind jk to esc
-- map("i", "jk", "<ESC>", {noremap = true, silent = true})
-- map("v", "jk", "<ESC>", {noremap = true, silent = true})
-- map("i", "jK", "<ESC>", {noremap = true, silent = true})
-- map("v", "jK", "<ESC>", {noremap = true, silent = true})
-- map("i", "JK", "<ESC>", {noremap = true, silent = true})
-- map("v", "JK", "<ESC>", {noremap = true, silent = true})
-- 