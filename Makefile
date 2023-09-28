run : slides

watch: 11-futures/lecture-slides.html
	docker run --rm --init -v "$(PWD)":/home/marp/app/ -e LANG=$LANG -p 37717:37717 marpteam/marp-cli -w 11-futures/lecture-slides.md


slides: 09-platformization/lecture-slides.html 11-futures/lecture-slides.html 12-ethics/lecture-slides.html 13-exam-prep/lecture-slides.html

UID := $(shell id -u)
GID := $(shell id -g)
LANG := "en_CA.UTF-8"


09-platformization/lecture-slides.html: 09-platformization/lecture-slides.md assets/theme.css
	docker run --rm --init -v "$(PWD)":/home/marp/app/ -e LANG=${LANG} -e MARP_USER="${UID}:${GID}" marpteam/marp-cli 09-platformization/lecture-slides.md --theme-set assets/theme.css --html --allow-local-files -o 09-platformization/lecture-slides.html

11-futures/lecture-slides.html: 11-futures/lecture-slides.md assets/theme.css
	docker run --rm --init -v "$(PWD)":/home/marp/app/ -e LANG=${LANG} -e MARP_USER="${UID}:${GID}" marpteam/marp-cli 11-futures/lecture-slides.md --theme-set assets/theme.css --html --allow-local-files -o 11-futures/lecture-slides.html

11-futures/lecture-slides.html: 11-futures/lecture-slides.md assets/theme.css
	docker run --rm --init -v "$(PWD)":/home/marp/app/ -e LANG=${LANG} -e MARP_USER="${UID}:${GID}" marpteam/marp-cli 11-futures/lecture-slides.md --theme-set assets/theme.css --html --allow-local-files -o 11-futures/lecture-slides.html

12-ethics/lecture-slides.html: 12-ethics/lecture-slides.md assets/theme.css
	docker run --rm --init -v "$(PWD)":/home/marp/app/ -e LANG=${LANG} -e MARP_USER="${UID}:${GID}" marpteam/marp-cli 12-ethics/lecture-slides.md --theme-set assets/theme.css --html --allow-local-files -o 12-ethics/lecture-slides.html

13-exam-prep/lecture-slides.html: 13-exam-prep/lecture-slides.md assets/theme.css
	docker run --rm --init -v "$(PWD)":/home/marp/app/ -e LANG=${LANG} -e MARP_USER="${UID}:${GID}" marpteam/marp-cli 13-exam-prep/lecture-slides.md --theme-set assets/theme.css --html --allow-local-files -o 13-exam-prep/lecture-slides.html
