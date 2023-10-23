run : slides

watch: 11-futures/lecture-slides.html
	docker run --rm --init -v "$(PWD)":/home/marp/app/ -e LANG=$LANG -p 37717:37717 marpteam/marp-cli -w 11-futures/lecture-slides.md


slides: session_1_topics/slides.html session_2_git/slides.html session_3_python_1/slides.html session_4_python_2/slides.html session_5_presentations/slides.html

UID := $(shell id -u)
GID := $(shell id -g)
LANG := "en_CA.UTF-8"

session_1_topics/slides.html: session_1_topics/slides.md assets/theme.css
	docker run --rm --init -v "$(PWD)":/home/marp/app/ -e LANG=${LANG} -e MARP_USER="${UID}:${GID}" marpteam/marp-cli session_1_topics/slides.md --theme-set assets/theme.css --html --allow-local-files -o session_1_topics/slides.html

session_2_git/slides.html: session_2_git/slides.md assets/theme.css
	docker run --rm --init -v "$(PWD)":/home/marp/app/ -e LANG=${LANG} -e MARP_USER="${UID}:${GID}" marpteam/marp-cli session_2_git/slides.md --theme-set assets/theme.css --html --allow-local-files -o session_2_git/slides.html

session_3_python_1/slides.html: session_3_python_1/slides.md assets/theme.css
	docker run --rm --init -v "$(PWD)":/home/marp/app/ -e LANG=${LANG} -e MARP_USER="${UID}:${GID}" marpteam/marp-cli session_3_python_1/slides.md --theme-set assets/theme.css --html --allow-local-files -o session_3_python_1/slides.html

session_4_python_2/slides.html: session_4_python_2/slides.md assets/theme.css
	docker run --rm --init -v "$(PWD)":/home/marp/app/ -e LANG=${LANG} -e MARP_USER="${UID}:${GID}" marpteam/marp-cli session_4_python_2/slides.md --theme-set assets/theme.css --html --allow-local-files -o session_4_python_2/slides.html

session_5_presentations/slides.html: session_5_presentations/slides.md assets/theme.css
	docker run --rm --init -v "$(PWD)":/home/marp/app/ -e LANG=${LANG} -e MARP_USER="${UID}:${GID}" marpteam/marp-cli session_5_presentations/slides.md --theme-set assets/theme.css --html --allow-local-files -o session_5_presentations/slides.html
