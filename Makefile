clean:
	@rm -rf tests/tmp

test: clean
	@./runtests.sh

update-deps:
	@./update-deps.sh

changelog:
	@git-changelog . -s angular -t keepachangelog -o CHANGELOG.md
