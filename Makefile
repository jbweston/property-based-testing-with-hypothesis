REVEALJS_VERSION = 3.8.0
presentation.html: presentation.md reveal.js
	pandoc --to revealjs --standalone -V revealjs-url=./reveal.js -o $@ $<

reveal.js:
	curl -s -L https://github.com/hakimel/reveal.js/archive/$(REVEALJS_VERSION).tar.gz \
	| tar -xz
	mv reveal.js-$(REVEALJS_VERSION) reveal.js


.PHONY: clean view

clean:
	rm presentation.html

view: presentation.html
	firefox $<
