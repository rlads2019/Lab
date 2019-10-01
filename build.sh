#[[ -d src ]] && rm -r src
[[ -d notes ]] && rm -r notes
#mkdir src
mkdir notes

for dir in */
do
    dir=${dir%*/}
    [[ ${dir} == "src" || ${dir} == "notes" ]] && continue
    
    # Copy notes.html to notes/
    cp ${dir}/notes.html notes/${dir:0:2}.html

    # remove non-lecture-relavent script
    rm ${dir}/rmd2scripts.R  
    rm ${dir}/notes.Rmd
    rm ${dir}/notes.html
    rm ${dir}/style.css
    
    
    #zip -r src/${dir:0:2}.zip ${dir}
    
done

