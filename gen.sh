#!/bin/sh
if [ "$#" -ne 0 ]; then
	echo "Uso: $0"
	exit 1
fi

for i in $(seq 1 4); do
	name=clase$i
	[ ! -f slides/$name.pdf ] && continue
	cat viewer/viewer.html | sed 's!<title>PDF\.js viewer</title>!<title>Programando con Robots UNRN - '$name.pdf'</title>!;s!viewer\.js!'$name.js'!' > viewer/$name.html

	cat viewer/viewer.js | sed 's!compressed.tracemonkey-pldi-09.pdf!../slides/'$name.pdf'!' > viewer/$name.js
	node minify.js viewer/$name
	mv viewer/$name-min.js viewer/$name
done

for js in build/compatibility.js build/pdf.js build/pdf.worker.js viewer/compatibility.js viewer/l10n.js viewer/debugger.js; do
	js=$(echo $js | sed 's/\.js//')
	node minify.js $js
	mv $js-min.js $js.js
done
