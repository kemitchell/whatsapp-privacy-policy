pages=$(wildcard *.html)

all: $(pages:.html=.txt)

%.txt: %.html
	lynx --dump $< > $@
	dos2unix $@
