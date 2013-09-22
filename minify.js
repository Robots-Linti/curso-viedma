compressor = require('./node_modules/node-minify/lib/node-minify');

var name = process.argv[2]

// Using UglifyJS
new compressor.minify({
    type: 'uglifyjs',
	fileIn: name + '.js',
	fileOut: name + '-min.js',
    callback: function(err, min){
		console.log('Uglifyjs');
        console.log(err);
//        console.log(min);
    }
});

