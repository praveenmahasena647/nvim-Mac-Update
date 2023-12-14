function background()
    vim.cmd(":!cd ~/Desktop/vue-me/bgs/ && go run .")
end

vim.api.nvim_set_keymap("n","<C-b>",":lua background()<CR>",{noremap=true})
