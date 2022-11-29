
html:
	# Now build the app
	export DEBUG=False && python3 app.py

update:
	git pull

submodules:
	git submodule init
	git submodule update
gh-pages:
	cd 127.0.0.1:8050 && touch .nojekyll && git init && git add * && git add .nojekyll && git commit -m "update" && git remote add origin https://github.com/sellyg/test-pages.github.io.git && git push -f origin master
	
all: gh-pages

teardown-python:
	ps | grep python | awk '{print $$1}' | xargs kill -9
