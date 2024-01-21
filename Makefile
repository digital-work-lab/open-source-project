run : slides

slides: output/01_topics.html output/02_git.html output/03_python_1.html output/04_python_2.html output/05_presentations.html

UID := $(shell id -u)
GID := $(shell id -g)
LANG := "en_CA.UTF-8"

output/01_topics.html: 01-topics.md assets/template/theme.css
	docker run --rm --init -v "$(PWD)":/home/marp/app/ -e LANG=${LANG} -e MARP_USER="${UID}:${GID}" marpteam/marp-cli 01-topics.md --theme-set assets/template/theme.css --html --allow-local-files -o output/01_topics.html

output/02_git.html: 02-git.md assets/template/theme.css
	docker run --rm --init -v "$(PWD)":/home/marp/app/ -e LANG=${LANG} -e MARP_USER="${UID}:${GID}" marpteam/marp-cli 02-git.md --theme-set assets/template/theme.css --html --allow-local-files -o output/02_git.html

output/03_python_1.html: 03-python_1.md assets/template/theme.css
	docker run --rm --init -v "$(PWD)":/home/marp/app/ -e LANG=${LANG} -e MARP_USER="${UID}:${GID}" marpteam/marp-cli 03-python_1.md --theme-set assets/template/theme.css --html --allow-local-files -o output/03_python_1.html

output/04_python_2.html: 04-python_2.md assets/template/theme.css
	docker run --rm --init -v "$(PWD)":/home/marp/app/ -e LANG=${LANG} -e MARP_USER="${UID}:${GID}" marpteam/marp-cli 04-python_2.md --theme-set assets/template/theme.css --html --allow-local-files -o output/04_python_2.html

output/05_presentations.html: 05-presentations.md assets/template/theme.css
	docker run --rm --init -v "$(PWD)":/home/marp/app/ -e LANG=${LANG} -e MARP_USER="${UID}:${GID}" marpteam/marp-cli 05-presentations.md --theme-set assets/template/theme.css --html --allow-local-files -o output/05_presentations.html
