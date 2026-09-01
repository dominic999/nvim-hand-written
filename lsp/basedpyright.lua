return{
    settings = {
        basedpyright = {
            disableTaggedHints = false,
            analysis = {
                inlayHints = {
                    genericTypes = true
                },
                autoSearchPaths = true,
                diagnosticMode = "openFilesOnly"
            }
        }
    },
}
