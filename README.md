# Property-based testing with Hypothesis
[![license: CC-BY-SA-4.0](https://licensebuttons.net/l/by-sa/4.0/88x31.png)][cc-by-sa]
[![CI status](https://github.com/jbweston/property-based-testing-with-hypothesis/workflows/build/badge.svg)][ci]

This is a presentation that I'm going to give at some point about property-based testing
and the success I've had with the [Hypothesis][hypothesis] library.

## Building the presentation

The presentation is built using [pandoc][pandoc]. If you have `pandoc`, `wget` and `make` installed
you can simply say:

```
make
```

This downloads `reveal.js` and builds a standalone HTML presentation, `offline.html`.
If you want to generate a presentation that uses `reveal.js` from a CDN, simply say:

```
make online.html
```

## License

All the materials in this repository are licensed under the [Creative Commons Attribution-ShareAlike 4.0 license][cc-by-sa].


[cc-by-sa]: https://creativecommons.org/licenses/by-sa/4.0/
[ci]: https://github.com/jbweston/property-based-testing-with-hypothesis/actions
[pandoc]: https://pandoc.org/installing.html
[hypothesis]: https://hypothesis.works/
