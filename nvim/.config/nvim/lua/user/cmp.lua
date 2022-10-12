local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
    return
end

cmp.setup {
    mapping = {
        ["<C-k>"] = cmp.mapping.select_prev_item(),
        ["<C-j>"] = cmp.mapping.select_next_item(),
        -- Accept currently selected item. If none selected, `select` first item
        ["<CR>"] = cmp.mapping.confirm { select = true },
    },

    sources = {
        { name = "buffer" },
    }
}
