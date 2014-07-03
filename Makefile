build:
	node_modules/.bin/coffee -co dist/ src/

uglify:
	node_modules/.bin/uglifyjs dist/ionic.resetfield.js > dist/ionic.resetfield.min.js

clean:
	rm -rf dist

.PHONY: all clean

all: clean build uglify