#cleanup
rm -rf _deployme
mkdir _deployme

#build
./scripts/build.sh

#minify JS
uglifyjs bundle.js -o _deployme/bundle.js
#minify css
#cssshrink bundle.css > _deployme/bundle.css
#copy
cp index.html _deployme/index.html
cp -R images/ _deployme/images/

#done
date; echo;
