local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.diagnostics.cpplint,
        null_ls.builtins.formatting.clang_format,
        null_ls.builtins.diagnostics.cmake_lint,
        -- null_ls.builtins.diagnostics.checkstyle.with({
        --     extra_args = { "-c", "/google_checks.xml" }, -- or "/sun_checks.xml" or path to self written rules
        -- }),
        -- null_ls.builtins.formatting.google_java_format,
    },
})
