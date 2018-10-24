echo "Initializing a simple JS project at $(pwd)"
git init
npm init -y #-y stands for all the defaults
npm install node-sass --save-dev
mkdir src css scss
echo ".red { color:red; } .red-dark { color: darken(red, 20%); }" >> scss/main.scss
touch src/index.js
sed -i 's/"scripts": {/"scripts": { \n\t\t"start": "node-sass -o css scss",/g' package.json
vim . #open index.js on vim, shift (:) and wq to save and quit

