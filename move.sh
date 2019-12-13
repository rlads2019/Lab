
for dir in */
do
    dir=${dir%*/}
    [[ ${dir} =~ ^[a-zA-Z] ]] && continue
    
    # Copy notes.html to notes/
    [[ -f ${dir}/pn.html ]] && mv ${dir}/pn.html pn/${dir:0:2}.html
    [[ -f ${dir}/pn.Rmd ]] && mv ${dir}/pn.Rmd pn/${dir:0:2}.Rmd
    
done

