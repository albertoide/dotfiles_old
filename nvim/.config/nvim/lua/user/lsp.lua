local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
    return
end

local mason_status_ok, mason = pcall(require, "mason")
if not status_ok then
    return
end

local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	return
end

local formatting = null_ls.builtins.formatting

mason.setup()

null_ls.setup({
	debug = false,
	sources = {
		formatting.clang_format
	}
})

local ops = { noremap=true, silent=true }

local on_attach = function(client, bufnr)
	local bufopts = { noremap=true, silent=true, buffer=bufnr}

	vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
	vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
	vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)

	vim.cmd([[ command! Format execute 'lua vim.lsp.buf.format{async=true}']])	
end

require("lspconfig")["clangd"].setup {
	on_attach = on_attach
}

