p <- knitr::purl('notes.Rmd')
knitr::read_chunk(p)
chunks <- knitr:::knit_code$get()

if (!dir.exists('R')) dir.create('R')
unlink('R/*', recursive = TRUE)

purrr::lmap(chunks, function(chunk) {
    script_name <- names(chunk)
    print(script_name)
    script_content <- chunk[[1]]
    if (script_name != 'setup') {
        if (stringr::str_detect(script_name, '/')) {
            dirs <- stringr::str_split(script_name, '/')[[1]]
            basepath <- 'R'
            for (dir in dirs[1:(length(dirs)-1)]) {
                basepath <- paste0(basepath, '/', dir)
                if (!dir.exists(basepath)) dir.create(basepath)
            } 
        }
        
        writeLines(script_content, 
                   paste0('R/', script_name, '.R'))
    }
    list()
})

unlink(p)
knitr:::knit_code$restore()