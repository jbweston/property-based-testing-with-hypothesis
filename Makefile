REVEALJS_VERSION = 3.8.0
REVEALJS_THEME = solarized

offline.html: presentation.md reveal.js
	pandoc --to revealjs --standalone \
	  -V theme=$(REVEALJS_THEME) \
	  -V revealjs-url=./reveal.js \
	  -o $@ $<

online.html: presentation.md
	pandoc --to revealjs --standalone \
	  -V theme=$(REVEALJS_THEME) \
	  -V revealjs-url=https://revealjs.com \
	  -o $@ $<

reveal.js:
	curl -s -L https://github.com/hakimel/reveal.js/archive/$(REVEALJS_VERSION).tar.gz \
	| tar -xz
	mv reveal.js-$(REVEALJS_VERSION) reveal.js


.PHONY: clean view

clean:
	rm -f online.html offline.html

present: offline.html
	firefox $<
