local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
	return
end

-- Register a handler that will be called for all installed servers.
-- Alternatively, you may also register handlers on specific server instancs instead (see example below).
lsp_installer.on_server_ready(function(server)
	local opts = {
		on_attach = require("user.lsp.handlers").on_attach,
		capabilities = require("user.lsp.handlers").capabilities,
	}

    if server.name == "clangd" then 
        local clangd_opts = require("user.lsp.settings.clangd")
        opts = vim.tbl_deep_extend("force", clangd_opts, opts)
    end 

    if server.name == "pyright" then 

    end 

    if server.name == "sumneko_lua" then 

    end 

	-- This setup() function is exactly the same as lspconfig's setup function.
	-- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
	server:setup(opts)
end)e
