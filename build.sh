[[ -d src ]] && rm -r src
[[ -d notes ]] && rm -r notes
mkdir src
mkdir notes

for dir in */
do
    dir=${dir%*/}
    [[ ${dir} == 'src' || ${dir} == 'notes' ]] && continue
    zip -r src/${dir:0:2}.zip ${dir}
    cp ${dir}/notes.html notes/${dir:0:2}.html
done
