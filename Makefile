UID := $(shell id -u)
GID := $(shell id -g)
LANG := "en_CA.UTF-8"

LATEX_REF_DOC = --template /assets/basic.tex

PANDOC_CALL = docker run --rm \
	--volume "`pwd`:/data" \
	--volume "$(shell readlink -f ./assets)":/assets/ \
	--user $(shell id -u):$(shell id -g) \
	pandoc/ubuntu-latex

SLIDES_LIST := $(patsubst slides/%.md,%,$(wildcard slides/[0-9][0-9]*.md))

# Define a rule to build all slides
slides: lecture_slides lecture_slides_pdfs

# convert_pdfs

lecture_slides: $(addprefix output/,$(addsuffix .html,$(SLIDES_LIST)))

lecture_slides_pdfs: $(addprefix output/,$(addsuffix .pdf,$(SLIDES_LIST)))

# convert_pdfs:
# 	python scripts/html_to_pdf.py

# Define a pattern rule for building a slide
output/%.html: slides/%.md assets/template/theme.css
	docker run --rm --init -v "$(PWD)":/home/marp/app/ -e LANG=${LANG} -e MARP_USER="${UID}:${GID}" marpteam/marp-cli:v3.4.0 $< --theme-set assets/template/theme.css --html --allow-local-files -o $@

# Define a pattern rule for building a slide
# output/%.pdf: %.md assets/template/theme.css
# 	docker run --rm --init -v "$(PWD)":/home/marp/app/ -e LANG=${LANG} -e MARP_USER="${UID}:${GID}" marpteam/marp-cli:v3.4.0 $< --theme-set assets/template/theme.css --pdf --allow-local-files -o $@

# output/%.pdf: %.md assets/template/theme.css
# 	docker run --rm --init -v "$(PWD)":/home/marp/app/ -v "$(PWD)/assets":/home/marp/app/assets -v "$(PWD)/material":/home/marp/app/material -e LANG=${LANG} -e MARP_USER="${UID}:${GID}" marpteam/marp-cli:v3.4.0 /home/marp/app/$< --theme-set /home/marp/app/assets/template/theme.css --pdf --allow-local-files -o /home/marp/app/$@

output/%.pdf: slides/%.md assets/template/theme.css
	docker run --rm --init -v "$(shell pwd)":/home/marp/app/ -v "$(shell pwd)/assets":/home/marp/app/assets -v "$(shell pwd)/material":/home/marp/app/material -e LANG=$(LANG) -e MARP_USER=$(shell id -u):$(shell id -g) marpteam/marp-cli:v3.4.0 /home/marp/app/$< --theme-set /home/marp/app/assets/template/theme.css --pdf --allow-local-files -o /home/marp/app/$@
