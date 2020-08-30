push:
	git push emacsattic       "mirror:master"
	git push emacscollective   "basic:master"
	git push emacsmirror      "mirror:master"
	git push emacsorphanage    "basic:master"
	git push magit             "magit:master"
	git push tarsius         "tarsius:master"

force-push:
	git push --force emacsattic       "mirror:master"
	git push --force emacscollective   "basic:master"
	git push --force emacsmirror      "mirror:master"
	git push --force emacsorphanage    "basic:master"
	git push --force magit             "magit:master"
	git push --force tarsius         "tarsius:master"
