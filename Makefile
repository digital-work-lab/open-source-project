UID := $(shell id -u)
GID := $(shell id -g)
LANG := "en_CA.UTF-8"

LATEX_REF_DOC = --template /assets/basic.tex

PANDOC_CALL = docker run --rm \
	--volume "`pwd`:/data" \
	--volume "$(shell readlink -f ./assets)":/assets/ \
	--user $(shell id -u):$(shell id -g) \
	pandoc/ubuntu-latex

SLIDES_LIST := $(patsubst %.md,%,$(wildcard [0-9][0-9]*.md))

TEACHING_NOTES_LIST := $(patsubst teaching_notes/%.md,%,$(wildcard teaching_notes/[0-9][0-9]*.md))

# Define a rule to build all slides
slides: lecture_slides teaching_notes

lecture_slides: $(addprefix output/,$(addsuffix .html,$(SLIDES_LIST)))

# Define a rule to build all teaching notes
teaching_notes: $(addprefix output/teaching_notes/,$(addsuffix .html,$(TEACHING_NOTES_LIST)))

# Define a pattern rule for building a slide
output/%.html: %.md assets/theme.css
	docker run --rm --init -v "$(PWD)":/home/marp/app/ -e LANG=${LANG} -e MARP_USER="${UID}:${GID}" marpteam/marp-cli $< --theme-set assets/theme.css --html --allow-local-files -o $@


# Define a pattern rule for building a teaching note
output/teaching_notes/%.html: teaching_notes/%.md assets/theme.css
	$(PANDOC_CALL) \
        $< \
        --filter pandoc-crossref \
        --citeproc \
        --output $@
