for i in *.js
do
    echo "Compressing $i"
    uglifyjs -nc $i > ../../static/js/$i
done

cd ../../static/js
cat jquery.js > lib.js
cat bootstrap.js >> lib.js
cat base.js >> lib.js
cat timeago.js >> lib.js
cat highlight.pack.js >> lib.js
rm jquery.js bootstrap.js base.js timeago.js highlight.pack.js

cat Markdown.Converter.js > editor.js
cat Markdown.Sanitizer.js >> editor.js
cat tageditor.js >> editor.js
cat jquery.caret.js >> editor.js
cat jquery.atwho.js >> editor.js
cat markdown.js >> editor.js
cat jquery.uploader.js >> editor.js
rm Markdown.Converter.js Markdown.Sanitizer.js tageditor.js jquery.caret.js jquery.atwho.js markdown.js jquery.uploader.js